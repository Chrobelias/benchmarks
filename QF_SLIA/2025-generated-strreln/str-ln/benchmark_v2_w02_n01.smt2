(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (<= (+ (* (- 2) (str.to_int x)) (* 8 (str.to_int y))) 5))
(assert (> (+ (* (- 9) (str.len x)) (* 2 (str.len y))) 87))

(check-sat)