(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (<= (+ (* 10 (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 6) (str.to_int z))) 42))
(assert (> (+ (str.len x) (* (- 2) (str.len y)) (* (- 3) (str.len z))) 71))

(check-sat)