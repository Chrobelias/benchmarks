(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (+ (* 5 (str.len x)) (* 2 (str.to_int x))) 16))
(assert (= (+ (* 9 (str.len x)) (* (- 4) (str.len y)) (* (- 8) (str.len z)) (* 6 (str.len a))) 67))
(assert (>= (+ (* 9 (str.len y)) (* (- 7) (str.len a)) (* 10 (str.to_int a))) 22))

(check-sat)