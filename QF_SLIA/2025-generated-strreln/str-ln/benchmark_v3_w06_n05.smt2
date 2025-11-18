(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (> (+ (* (- 9) (str.len x)) (* 3 (str.len y)) (* (- 4) (str.len z))) 95))
(assert (= (+ (* (- 7) (str.to_int x)) (* (- 5) (str.to_int y)) (* 3 (str.to_int z))) 13))
(assert (> (+ (* (- 10) (str.len z)) (* 7 (str.to_int x)) (* (- 6) (str.to_int y))) 33))
(assert (<= (+ (* (- 5) (str.len x)) (str.len z)) 3))
(assert (<= (+ (* 5 (str.to_int x)) (* 5 (str.to_int y)) (- (str.to_int z))) 24))

(check-sat)