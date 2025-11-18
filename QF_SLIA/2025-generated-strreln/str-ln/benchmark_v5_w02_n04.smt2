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

(assert (> (+ (* (- 9) (str.len x)) (* (- 7) (str.len y)) (str.len z) (* 2 (str.len a)) (* 10 (str.len b))) 99))
(assert (= (+ (* 2 (str.to_int x)) (* (- 5) (str.to_int y)) (str.to_int z) (- (str.to_int a))) 14))

(check-sat)