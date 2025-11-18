(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (> (+ (* (- 5) (str.len x)) (* 9 (str.len y)) (* 7 (str.len z))) 24))
(assert (>= (+ (* 8 (str.len x)) (- (str.len z)) (- (str.to_int y))) 75))
(assert (= (+ (* (- 7) (str.len x)) (* 2 (str.len y)) (* (- 7) (str.len z))) 13))
(assert (<= (+ (* (- 9) (str.to_int x)) (* (- 8) (str.to_int y)) (* 7 (str.to_int z))) 20))

(check-sat)