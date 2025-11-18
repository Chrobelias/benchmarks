(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (+ (* (- 9) (str.len x)) (* 7 (str.len y)) (str.to_int y)) 36))
(assert (> (+ (str.len x) (* 4 (str.to_int x)) (- (str.to_int y))) 30))
(assert (> (+ (* (- 6) (str.len x)) (* 8 (str.len y))) 72))
(assert (< (+ (* 10 (str.to_int x)) (* 2 (str.to_int y))) 60))

(check-sat)