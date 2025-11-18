(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (< (+ (* 9 (str.to_int x)) (* 8 (str.to_int y)) (* 9 (str.to_int z))) 35))
(assert (> (+ (- (str.len x)) (* (- 7) (str.len y)) (str.len z)) 28))

(check-sat)