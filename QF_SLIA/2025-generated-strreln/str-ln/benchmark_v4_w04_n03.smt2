(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (+ (* (- 8) (str.len x)) (* 5 (str.len y)) (str.len z) (* (- 6) (str.len a))) 50))
(assert (> (+ (* 7 (str.len x)) (* (- 10) (str.len y)) (* (- 4) (str.len a))) 23))
(assert (<= (+ (* 4 (str.len x)) (* 2 (str.to_int x))) 81))

(check-sat)