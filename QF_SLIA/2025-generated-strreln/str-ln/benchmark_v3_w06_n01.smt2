(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (+ (* 5 (str.len y)) (- (str.to_int z))) 95))
(assert (= (+ (* 10 (str.len x)) (* (- 6) (str.len y)) (* (- 3) (str.len z))) 16))
(assert (> (+ (* 2 (str.len x)) (* (- 8) (str.len y)) (* 6 (str.len z))) 28))
(assert (<= (+ (* 7 (str.to_int x)) (* (- 9) (str.to_int y)) (* 7 (str.to_int z))) 60))
(assert (> (+ (* 5 (str.len x)) (* (- 7) (str.len y)) (* 5 (str.len z))) 96))

(check-sat)