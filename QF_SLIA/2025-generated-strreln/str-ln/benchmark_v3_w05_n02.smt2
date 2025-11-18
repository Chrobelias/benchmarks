(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (+ (- (str.len x)) (* (- 6) (str.len y)) (* 3 (str.len z))) 33))
(assert (< (+ (* (- 4) (str.to_int x)) (- (str.to_int y))) 95))
(assert (<= (+ (* 9 (str.to_int x)) (* 6 (str.to_int z))) 41))
(assert (= (+ (* 9 (str.len x)) (* (- 3) (str.len y)) (* (- 10) (str.len z))) 24))
(assert (> (+ (* (- 3) (str.to_int x)) (* (- 10) (str.to_int y)) (* 2 (str.to_int z))) 7))

(check-sat)