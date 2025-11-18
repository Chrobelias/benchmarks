(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (<= (* (- 3) (str.to_int y)) 17))
(assert (= (+ (* 2 (str.to_int x)) (- (str.to_int y))) 80))
(assert (>= (+ (str.len y) (* 5 (str.to_int x))) 10))
(assert (> (+ (* 3 (str.len y)) (* (- 6) (str.to_int x)) (* (- 9) (str.to_int y))) 11))

(check-sat)