(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (> (+ (str.len x) (* 8 (str.len y)) (* (- 8) (str.len z)) (* (- 7) (str.len a))) 23))
(assert (= (+ (* 5 (str.len x)) (* (- 8) (str.len y)) (* 4 (str.len z)) (* 9 (str.len a))) 93))
(assert (= (+ (* 10 (str.to_int x)) (* 5 (str.to_int y)) (- (str.to_int z)) (* (- 2) (str.to_int a))) 62))

(check-sat)