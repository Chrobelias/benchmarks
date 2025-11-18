(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (+ (* (- 5) (str.len x)) (* (- 3) (str.len z)) (str.len a) (* 4 (str.to_int x)) (* (- 6) (str.to_int y))) 35))
(assert (> (+ (* (- 8) (str.to_int x)) (* (- 10) (str.to_int y)) (* 4 (str.to_int z)) (* (- 6) (str.to_int a))) 12))
(assert (>= (+ (* 2 (str.len y)) (* (- 5) (str.len z)) (* (- 2) (str.to_int z))) 85))
(assert (<= (+ (* (- 8) (str.to_int x)) (* (- 3) (str.to_int y)) (* 9 (str.to_int z)) (* 4 (str.to_int a))) 97))

(check-sat)