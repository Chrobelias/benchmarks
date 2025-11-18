(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (+ (* 10 (str.to_int x)) (* 6 (str.to_int y)) (* 10 (str.to_int z))) 72))
(assert (= (+ (* 8 (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 2) (str.to_int z))) 25))
(assert (<= (+ (* 7 (str.len x)) (* 7 (str.len y)) (* (- 3) (str.len z))) 61))
(assert (> (+ (* 8 (str.len x)) (* 8 (str.len y)) (* 4 (str.len z))) 93))

(check-sat)