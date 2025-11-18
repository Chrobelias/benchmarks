(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (+ (* 5 (str.to_int x)) (* 7 (str.to_int y)) (* (- 2) (str.to_int z))) 1))
(assert (= (+ (str.len x) (* 7 (str.to_int y)) (* (- 7) (str.to_int z))) 83))

(check-sat)