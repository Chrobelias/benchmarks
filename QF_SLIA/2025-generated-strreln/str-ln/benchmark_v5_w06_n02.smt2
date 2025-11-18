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

(assert (>= (+ (* (- 8) (str.to_int x)) (* 5 (str.to_int y)) (str.to_int z) (* 8 (str.to_int a)) (str.to_int b)) 98))
(assert (= (+ (* (- 10) (str.to_int x)) (* 6 (str.to_int y)) (* (- 3) (str.to_int z)) (* 9 (str.to_int a)) (* 6 (str.to_int b))) 12))
(assert (<= (+ (* (- 9) (str.len x)) (* 3 (str.len z)) (* 9 (str.to_int x)) (* (- 7) (str.to_int y))) 69))
(assert (> (+ (- (str.len x)) (* 3 (str.len z)) (* 6 (str.len a)) (* (- 8) (str.len b))) 90))
(assert (> (+ (* 8 (str.len x)) (* 5 (str.len y)) (* 10 (str.len z)) (* 2 (str.len a)) (* 10 (str.len b))) 68))

(check-sat)