(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (> (+ (str.len x) (* (- 2) (str.to_int y))) 33))
(assert (= (+ (* 7 (str.to_int x)) (* 5 (str.to_int y)) (* (- 10) (str.to_int z))) 20))

(check-sat)