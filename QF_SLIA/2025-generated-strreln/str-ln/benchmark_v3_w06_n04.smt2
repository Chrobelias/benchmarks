(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (<= (+ (* 4 (str.to_int x)) (str.to_int y) (* (- 9) (str.to_int z))) 40))
(assert (> (+ (* 2 (str.len x)) (* 5 (str.len y)) (* (- 4) (str.len z))) 81))
(assert (< (+ (* 3 (str.to_int x)) (* 5 (str.to_int y))) 78))
(assert (> (+ (* 3 (str.len x)) (- (str.to_int x))) 99))
(assert (< (+ (* 4 (str.to_int x)) (* 8 (str.to_int y)) (* (- 7) (str.to_int z))) 43))

(check-sat)