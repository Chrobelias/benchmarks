(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (> (+ (* 2 (str.len x)) (* (- 4) (str.len y))) 62))
(assert (= (+ (* (- 2) (str.to_int x)) (* 9 (str.to_int y))) 12))

(check-sat)