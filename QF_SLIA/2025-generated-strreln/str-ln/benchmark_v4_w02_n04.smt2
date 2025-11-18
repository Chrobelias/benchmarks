(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (+ (* 10 (str.to_int y)) (* (- 6) (str.to_int z)) (* 4 (str.to_int a))) 46))
(assert (>= (+ (* (- 2) (str.len x)) (str.len y) (* (- 9) (str.len z)) (* (- 9) (str.len a))) 34))

(check-sat)