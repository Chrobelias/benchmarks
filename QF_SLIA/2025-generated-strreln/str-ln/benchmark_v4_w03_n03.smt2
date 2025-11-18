(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (+ (* (- 8) (str.len x)) (* 5 (str.len y)) (* 2 (str.len z)) (* (- 10) (str.len a))) 83))
(assert (= (+ (* (- 7) (str.to_int x)) (* (- 3) (str.to_int y)) (* 10 (str.to_int z)) (- (str.to_int a))) 100))
(assert (= (+ (* 6 (str.len x)) (* 8 (str.len y)) (* (- 8) (str.len z)) (* (- 9) (str.len a))) 32))

(check-sat)