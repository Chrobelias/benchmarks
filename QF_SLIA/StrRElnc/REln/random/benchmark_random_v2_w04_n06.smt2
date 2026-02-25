(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "823") (str.to_re "132")))))
(assert (str.in_re y (re.+ (str.to_re "37"))))

(assert (> (+ (* (- 8) (str.len x)) (* (- 3) (str.len y))) 85))
(assert (<= (+ (* 9 (str.len x)) (* (- 7) (str.to_int x))) 29))
(assert (<= (+ (* 4 (str.to_int x)) (* (- 7) (str.to_int y))) 99))

(check-sat)