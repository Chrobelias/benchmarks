(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (+ (* (- 5) (str.len x)) (* 3 (str.len y))) 55))
(assert (= (+ (* 2 (str.len x)) (- (str.to_int y))) 34))
(assert (< (+ (* 4 (str.to_int x)) (* (- 6) (str.to_int y))) 86))

(check-sat)