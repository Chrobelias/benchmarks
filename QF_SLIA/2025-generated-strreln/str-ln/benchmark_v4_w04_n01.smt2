(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (+ (* 2 (str.to_int x)) (* (- 6) (str.to_int y)) (* (- 4) (str.to_int z)) (* (- 7) (str.to_int a))) 76))
(assert (< (+ (* (- 10) (str.to_int x)) (* 3 (str.to_int y)) (- (str.to_int z)) (* (- 4) (str.to_int a))) 11))
(assert (< (+ (* (- 3) (str.to_int x)) (* 9 (str.to_int y)) (* (- 4) (str.to_int z)) (* 9 (str.to_int a))) 4))
(assert (>= (+ (* 2 (str.len x)) (* (- 7) (str.len y)) (- (str.len z)) (* (- 9) (str.len a))) 79))

(check-sat)