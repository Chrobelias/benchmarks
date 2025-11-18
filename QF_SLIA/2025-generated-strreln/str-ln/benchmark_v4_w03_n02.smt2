(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (+ (* (- 9) (str.to_int y)) (* 6 (str.to_int z)) (* (- 5) (str.to_int a))) 10))
(assert (> (+ (* (- 3) (str.len x)) (str.len y) (* 4 (str.len z))) 67))
(assert (>= (+ (* 5 (str.to_int x)) (* 6 (str.to_int y)) (* 2 (str.to_int z)) (* 5 (str.to_int a))) 82))

(check-sat)