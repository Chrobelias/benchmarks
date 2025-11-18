(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (> (+ (* (- 5) (str.len x)) (* 3 (str.len y)) (* (- 3) (str.len z))) 93))
(assert (= (+ (str.to_int y) (* 5 (str.to_int z))) 89))
(assert (< (+ (* (- 3) (str.len x)) (- (str.len y)) (* 6 (str.len z))) 5))

(check-sat)