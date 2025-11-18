(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (<= (+ (* (- 5) (str.len x)) (* 9 (str.len y)) (* (- 10) (str.to_int y))) 9))
(assert (> (+ (* 2 (str.len y)) (* (- 5) (str.to_int x)) (* (- 8) (str.to_int y))) 68))

(check-sat)