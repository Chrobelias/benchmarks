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

(assert (> (+ (* (- 5) (str.len x)) (* 2 (str.len y)) (* 8 (str.len z)) (* 10 (str.len b))) 52))
(assert (<= (+ (* (- 2) (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 2) (str.to_int z)) (* 7 (str.to_int a)) (* 6 (str.to_int b))) 85))

(check-sat)