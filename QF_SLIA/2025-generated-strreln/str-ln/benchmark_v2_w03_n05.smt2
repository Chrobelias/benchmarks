(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (> (+ (* 2 (str.len y)) (* (- 6) (str.to_int x))) 55))
(assert (> (+ (* 3 (str.to_int x)) (* (- 9) (str.to_int y))) 30))

(check-sat)