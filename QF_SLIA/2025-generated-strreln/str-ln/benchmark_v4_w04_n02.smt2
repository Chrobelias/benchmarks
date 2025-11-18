(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (> (+ (str.len a) (* (- 5) (str.to_int x))) 51))
(assert (<= (+ (* 6 (str.len x)) (* (- 5) (str.len z)) (* 9 (str.to_int a))) 29))

(check-sat)