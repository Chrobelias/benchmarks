(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (+ (* 4 (str.len x)) (* 10 (str.len y))) 18))
(assert (> (str.len y) 35))
(assert (< (+ (- (str.len y)) (* 2 (str.to_int y))) 13))
(assert (> (+ (* 5 (str.len x)) (* 7 (str.to_int x))) 77))

(check-sat)