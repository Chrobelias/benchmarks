(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (> (+ (* (- 10) (str.to_int x)) (* (- 3) (str.to_int y)) (str.to_int z)) 76))
(assert (< (+ (* 10 (str.to_int x)) (* 10 (str.to_int y)) (* (- 2) (str.to_int z))) 70))
(assert (= (+ (* 3 (str.len y)) (* (- 7) (str.len z)) (- (str.to_int y))) 88))
(assert (<= (+ (* 5 (str.to_int x)) (* (- 10) (str.to_int y))) 42))

(check-sat)