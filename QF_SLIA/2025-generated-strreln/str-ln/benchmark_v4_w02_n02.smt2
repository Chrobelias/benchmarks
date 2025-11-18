(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (<= (+ (* (- 6) (str.to_int x)) (* (- 4) (str.to_int y)) (* 5 (str.to_int z)) (* 4 (str.to_int a))) 69))
(assert (> (+ (* (- 9) (str.len x)) (* (- 5) (str.len z)) (* 8 (str.len a))) 20))

(check-sat)