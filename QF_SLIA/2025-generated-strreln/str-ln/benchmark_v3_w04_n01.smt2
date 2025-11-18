(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (+ (* 2 (str.len x)) (* (- 8) (str.len y)) (* (- 10) (str.len z))) 74))
(assert (<= (+ (* (- 3) (str.len z)) (str.to_int x) (* (- 4) (str.to_int y))) 50))
(assert (> (+ (* (- 7) (str.to_int x)) (* 8 (str.to_int y)) (* 8 (str.to_int z))) 18))

(check-sat)