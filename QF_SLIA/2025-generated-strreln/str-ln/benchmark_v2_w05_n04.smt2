(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (+ (* (- 8) (str.len x)) (* 2 (str.len y)) (* (- 9) (str.to_int x))) 52))
(assert (> (+ (* (- 6) (str.len x)) (str.len y)) 66))
(assert (> (+ (* (- 2) (str.len y)) (* 7 (str.to_int y))) 79))

(check-sat)