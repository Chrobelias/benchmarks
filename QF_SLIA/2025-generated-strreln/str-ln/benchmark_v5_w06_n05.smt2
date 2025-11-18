(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (= (+ (* (- 3) (str.len a)) (* (- 7) (str.to_int z)) (* 7 (str.to_int a))) 87))
(assert (<= (+ (* 6 (str.to_int x)) (* 7 (str.to_int y)) (* (- 2) (str.to_int z)) (* (- 10) (str.to_int a)) (- (str.to_int b))) 54))
(assert (< (+ (* 2 (str.to_int x)) (* (- 6) (str.to_int y)) (* (- 2) (str.to_int z)) (* 3 (str.to_int a)) (* 5 (str.to_int b))) 54))
(assert (= (+ (* (- 6) (str.to_int x)) (* 3 (str.to_int y)) (* 8 (str.to_int z)) (* 10 (str.to_int a)) (* 6 (str.to_int b))) 13))
(assert (= (+ (* 4 (str.len x)) (* 4 (str.len y)) (* (- 4) (str.len z)) (* (- 3) (str.len a)) (* 9 (str.len b))) 11))

(check-sat)