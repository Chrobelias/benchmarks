(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z y) (str.++ x "82")))

(assert (str.in_re z (re.+ (re.* (re.range "6" "8")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "2")) (re.+ (re.range "3" "7")))))
(assert (str.in_re y (re.* (re.range "1" "9"))))

(assert (< (+ (* 8 (str.to_int x)) (* 2 (str.to_int y)) (* 10 (str.to_int z))) 27))
(assert (>= (+ (str.len x) (* (- 7) (str.len y)) (* (- 5) (str.len z))) 39))

(check-sat)