(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.union (re.+ (re.+ (re.* (str.to_re "822")))) (str.to_re "26"))))
(assert (str.in_re y (re.* (str.to_re "64"))))

(assert (<= (+ (* 2 (str.to_int x)) (* (- 6) (str.to_int y))) 12))
(assert (>= (+ (* 9 (str.len y)) (* (- 2) (str.to_int x))) 74))
(assert (<= (+ (* (- 2) (str.len x)) (* 5 (str.len y))) 24))
(assert (> (+ (* 2 (str.len y)) (str.to_int x)) 37))

(check-sat)