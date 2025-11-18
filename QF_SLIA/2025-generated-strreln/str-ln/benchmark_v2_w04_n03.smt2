(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (+ (* (- 5) (str.len y)) (str.to_int x)) 1))
(assert (>= (+ (str.len x) (* (- 2) (str.to_int x)) (* (- 4) (str.to_int y))) 57))

(check-sat)