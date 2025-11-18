(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (+ (* 3 (str.len z)) (str.to_int x) (* (- 7) (str.to_int z))) 59))
(assert (<= (+ (* 10 (str.len x)) (* (- 9) (str.len y)) (* 8 (str.len z))) 33))
(assert (= (+ (* (- 3) (str.to_int x)) (* (- 3) (str.to_int y)) (* 3 (str.to_int z))) 57))

(check-sat)