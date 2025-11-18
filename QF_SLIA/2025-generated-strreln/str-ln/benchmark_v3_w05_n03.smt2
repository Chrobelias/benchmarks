(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (+ (* 7 (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 6) (str.to_int z))) 1))
(assert (< (+ (* (- 7) (str.to_int y)) (* (- 2) (str.to_int z))) 87))
(assert (= (+ (* (- 10) (str.to_int x)) (* 2 (str.to_int y)) (* 9 (str.to_int z))) 97))
(assert (< (+ (* (- 3) (str.len y)) (* 2 (str.to_int z))) 4))

(check-sat)