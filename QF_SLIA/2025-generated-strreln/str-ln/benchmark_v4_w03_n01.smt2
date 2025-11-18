(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (+ (* (- 3) (str.len x)) (* 2 (str.len y)) (* (- 9) (str.len a)) (- (str.to_int y)) (* 8 (str.to_int a))) 30))
(assert (>= (+ (* (- 6) (str.len x)) (str.len y) (* (- 10) (str.len z)) (* (- 7) (str.len a))) 62))

(check-sat)