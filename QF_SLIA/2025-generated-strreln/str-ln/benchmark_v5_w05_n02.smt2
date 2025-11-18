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

(assert (<= (+ (* 3 (str.to_int x)) (str.to_int y) (* 9 (str.to_int z)) (* (- 9) (str.to_int a)) (* 5 (str.to_int b))) 51))
(assert (> (+ (* 4 (str.len x)) (str.len y) (* 4 (str.len z)) (* 8 (str.len a)) (* 4 (str.len b))) 56))
(assert (>= (+ (* 2 (str.len x)) (* 5 (str.len y)) (* (- 2) (str.len z)) (* (- 10) (str.len a)) (* 2 (str.len b))) 15))
(assert (> (+ (str.len y) (- (str.to_int z))) 70))

(check-sat)