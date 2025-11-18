(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (> (+ (* (- 8) (str.len x)) (str.len y) (* 6 (str.len z))) 97))
(assert (> (+ (* 2 (str.to_int y)) (* (- 10) (str.to_int z))) 93))
(assert (>= (+ (* (- 7) (str.len x)) (* (- 4) (str.len y)) (* 4 (str.len z))) 72))
(assert (>= (+ (- (str.len x)) (* 8 (str.len y)) (* (- 5) (str.len z))) 29))
(assert (< (+ (* (- 6) (str.len x)) (* (- 5) (str.len y)) (* (- 2) (str.len z))) 87))

(check-sat)