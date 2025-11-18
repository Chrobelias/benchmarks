(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (< (str.to_int y) 86))
(assert (<= (+ (* 8 (str.len y)) (* (- 6) (str.to_int x))) 57))

(check-sat)