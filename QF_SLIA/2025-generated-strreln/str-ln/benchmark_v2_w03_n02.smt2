(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (+ (* (- 10) (str.len x)) (str.len y)) 55))
(assert (< (+ (- (str.len x)) (* (- 3) (str.len y))) 80))
(assert (>= (+ (* 6 (str.to_int x)) (* (- 5) (str.to_int y))) 86))

(check-sat)