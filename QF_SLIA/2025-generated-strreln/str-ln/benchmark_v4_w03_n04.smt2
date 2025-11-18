(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (> (+ (* (- 9) (str.len x)) (str.len y) (* (- 6) (str.len z)) (* (- 10) (str.len a))) 89))
(assert (= (+ (* 10 (str.len y)) (* 5 (str.len z)) (* 7 (str.len a)) (* 5 (str.to_int z)) (* (- 7) (str.to_int a))) 71))

(check-sat)