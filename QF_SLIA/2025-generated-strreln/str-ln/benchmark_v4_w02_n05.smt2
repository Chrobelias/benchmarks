(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (+ (str.to_int x) (* (- 10) (str.to_int y)) (* 8 (str.to_int z)) (* 8 (str.to_int a))) 80))
(assert (>= (+ (* (- 2) (str.len y)) (* (- 4) (str.len z)) (str.len a)) 79))

(check-sat)