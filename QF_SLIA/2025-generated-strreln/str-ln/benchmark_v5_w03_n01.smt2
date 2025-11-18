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

(assert (>= (+ (* 2 (str.len x)) (* (- 5) (str.len y)) (* (- 5) (str.to_int y)) (* (- 9) (str.to_int z))) 90))
(assert (= (+ (* (- 8) (str.len x)) (* 7 (str.len y)) (* 8 (str.len z)) (* 9 (str.len a)) (* 4 (str.len b))) 53))

(check-sat)