(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (> (+ (* 8 (str.len x)) (* (- 6) (str.len y)) (* (- 8) (str.len z))) 73))
(assert (> (+ (* (- 10) (str.to_int x)) (* 3 (str.to_int y)) (* (- 5) (str.to_int z))) 75))
(assert (> (+ (* (- 5) (str.len x)) (* 10 (str.len y)) (* 7 (str.to_int x))) 1))
(assert (> (+ (* (- 2) (str.len x)) (* 3 (str.len y)) (* 7 (str.len z))) 56))
(assert (<= (+ (* 7 (str.len x)) (* (- 6) (str.len y)) (* 5 (str.len z))) 83))

(check-sat)