(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (+ (* 6 (str.to_int x)) (* 7 (str.to_int y)) (* 7 (str.to_int z))) 87))
(assert (< (+ (* (- 4) (str.len x)) (* 8 (str.len y)) (* (- 5) (str.len z))) 73))
(assert (> (+ (* (- 9) (str.len x)) (* (- 4) (str.len y)) (* 2 (str.len z))) 66))
(assert (< (+ (str.len x) (* 2 (str.len y))) 41))
(assert (<= (+ (* (- 10) (str.len y)) (* 8 (str.to_int x)) (* (- 7) (str.to_int z))) 33))

(check-sat)