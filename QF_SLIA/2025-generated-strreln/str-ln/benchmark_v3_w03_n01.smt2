(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (<= (+ (* 6 (str.len z)) (* 7 (str.to_int z))) 61))
(assert (< (+ (* 8 (str.len x)) (* 5 (str.len y)) (* (- 3) (str.len z))) 9))

(check-sat)