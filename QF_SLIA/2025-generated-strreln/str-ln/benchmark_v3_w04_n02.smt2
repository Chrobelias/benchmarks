(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (> (+ (* 5 (str.len z)) (* (- 4) (str.to_int x)) (* (- 4) (str.to_int y))) 60))
(assert (>= (+ (* (- 7) (str.len x)) (* 2 (str.len y)) (* (- 7) (str.len z))) 4))
(assert (<= (+ (* (- 10) (str.len x)) (* 4 (str.len z))) 79))

(check-sat)