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

(assert (> (+ (* 5 (str.len x)) (* (- 2) (str.len b)) (* 9 (str.to_int x)) (* 9 (str.to_int y)) (* (- 7) (str.to_int a))) 23))
(assert (>= (+ (* 2 (str.len y)) (* (- 2) (str.len a)) (* (- 8) (str.len b)) (- (str.to_int a))) 68))
(assert (= (+ (* (- 9) (str.to_int x)) (* 8 (str.to_int y)) (* (- 10) (str.to_int a)) (* 2 (str.to_int b))) 75))

(check-sat)