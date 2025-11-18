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

(assert (> (+ (* (- 3) (str.len a)) (* 5 (str.to_int z))) 17))
(assert (= (+ (* 7 (str.to_int x)) (* 2 (str.to_int y)) (* 6 (str.to_int z)) (* (- 8) (str.to_int a)) (* (- 10) (str.to_int b))) 11))
(assert (>= (+ (* 2 (str.len x)) (- (str.len y)) (* 7 (str.len z)) (- (str.len b))) 92))
(assert (<= (+ (* 3 (str.len x)) (* (- 6) (str.len y)) (* 9 (str.len z)) (* (- 10) (str.len a)) (* 5 (str.len b))) 57))

(check-sat)