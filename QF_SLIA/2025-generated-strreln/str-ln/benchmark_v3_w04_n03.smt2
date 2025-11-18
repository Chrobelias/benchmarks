(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (+ (* 5 (str.len x)) (* (- 6) (str.len y)) (* 10 (str.len z))) 65))
(assert (= (+ (* (- 6) (str.len x)) (* 8 (str.len y)) (* (- 6) (str.len z))) 44))
(assert (> (+ (- (str.to_int y)) (* 3 (str.to_int z))) 91))
(assert (<= (+ (* (- 5) (str.len x)) (- (str.len y)) (* (- 4) (str.len z))) 24))

(check-sat)