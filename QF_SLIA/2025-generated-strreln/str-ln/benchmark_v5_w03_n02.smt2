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

(assert (>= (+ (* (- 9) (str.len x)) (* 3 (str.len y)) (* (- 5) (str.len a)) (* (- 10) (str.to_int x)) (* 2 (str.to_int b))) 12))
(assert (= (+ (* 10 (str.len x)) (* (- 6) (str.len y)) (* 8 (str.len z)) (* 2 (str.len a)) (* (- 6) (str.len b))) 1))

(check-sat)