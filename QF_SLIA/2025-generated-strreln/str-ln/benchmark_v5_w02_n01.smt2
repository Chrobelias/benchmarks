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

(assert (> (+ (* (- 5) (str.to_int x)) (* (- 10) (str.to_int y)) (* 7 (str.to_int a)) (* 10 (str.to_int b))) 73))
(assert (> (+ (* 3 (str.len x)) (* (- 4) (str.len y)) (* (- 9) (str.len z)) (- (str.len a)) (* (- 5) (str.len b))) 6))

(check-sat)