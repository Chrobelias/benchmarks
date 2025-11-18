(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (> (+ (* (- 7) (str.len x)) (* (- 8) (str.len y)) (* 9 (str.len z)) (* 7 (str.len a))) 13))
(assert (= (+ (* 5 (str.to_int x)) (* 8 (str.to_int y)) (* 6 (str.to_int z)) (* 4 (str.to_int a))) 77))
(assert (<= (+ (* (- 5) (str.len x)) (* (- 5) (str.len y)) (* (- 5) (str.len z)) (* (- 2) (str.len a))) 52))
(assert (>= (+ (* 9 (str.len x)) (* 2 (str.len y)) (* (- 9) (str.len z)) (* 3 (str.len a))) 8))
(assert (= (+ (* (- 2) (str.to_int x)) (* (- 5) (str.to_int y)) (- (str.to_int z)) (* 3 (str.to_int a))) 5))

(check-sat)