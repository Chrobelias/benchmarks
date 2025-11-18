(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (+ (* 7 (str.len x)) (* 5 (str.len y))) 10))
(assert (> (+ (str.len x) (* (- 4) (str.len y))) 95))
(assert (> (+ (* (- 7) (str.len y)) (str.to_int x) (* (- 4) (str.to_int y))) 10))

(check-sat)