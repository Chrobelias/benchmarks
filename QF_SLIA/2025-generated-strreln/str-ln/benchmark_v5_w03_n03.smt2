(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (> (+ (* (- 6) (str.to_int x)) (* 5 (str.to_int y)) (* (- 4) (str.to_int a)) (* 2 (str.to_int b))) 7))
(assert (= (+ (* (- 4) (str.len a)) (* 3 (str.len b)) (* (- 9) (str.to_int b))) 42))

(check-sat)