(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.+ (str.to_re "72"))))
(assert (str.in_re x (re.* (str.to_re "905"))))

(assert (> (+ (* (- 5) (str.to_int x)) (str.to_int y)) 88))
(assert (> (+ (* 6 (str.len x)) (* (- 3) (str.to_int y))) 17))

(check-sat)