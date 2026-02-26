(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= z (str.++ x y "34")))

(assert (str.in_re z (re.* (re.union (re.union (re.+ (str.to_re "757")) (str.to_re "584")) (re.range "3" "9")))))
(assert (str.in_re y (re.+ (str.to_re "778"))))
(assert (str.in_re x (re.+ (re.range "1" "8"))))

(assert (> (+ (* (- 2) (str.len x)) (str.len y) (* (- 6) (str.len z))) 58))
(assert (< (+ (* (- 6) (str.len z)) (* (- 6) (str.to_int z))) 51))

(check-sat)