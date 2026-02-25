(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ "97" y)))

(assert (str.in_re x (re.+ (re.range "3" "9"))))
(assert (str.in_re y (re.union (re.* (re.range "1" "9")) (str.to_re "33"))))

(assert (>= (+ (* 5 (str.len x)) (* 8 (str.len y)) (* (- 5) (str.to_int y))) 100))
(assert (< (+ (str.len x) (* (- 9) (str.len y))) 68))

(check-sat)