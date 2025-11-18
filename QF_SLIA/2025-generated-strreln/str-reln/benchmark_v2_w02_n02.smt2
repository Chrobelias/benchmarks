(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "730") (str.to_re "538")))))
(assert (str.in_re y (re.+ (str.to_re "3"))))

(assert (= (+ (* (- 9) (str.len x)) (* 8 (str.len y)) (* 10 (str.to_int y))) 97))

(check-sat)