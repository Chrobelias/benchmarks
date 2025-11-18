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

(assert (< (+ (* 5 (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 6) (str.to_int z)) (* 9 (str.to_int a)) (* 9 (str.to_int b))) 72))
(assert (= (+ (* (- 9) (str.len a)) (* (- 10) (str.to_int x)) (str.to_int z) (* (- 10) (str.to_int a))) 86))
(assert (<= (+ (* (- 9) (str.len x)) (- (str.to_int x)) (* 6 (str.to_int z))) 60))

(check-sat)