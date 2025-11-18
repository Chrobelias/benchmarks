(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (+ (str.len x) (* (- 2) (str.len y))) 78))
(assert (>= (+ (* 2 (str.len x)) (* (- 8) (str.len y))) 85))
(assert (<= (+ (* (- 6) (str.to_int x)) (* (- 5) (str.to_int y))) 87))
(assert (= (+ (* 3 (str.to_int x)) (* (- 2) (str.to_int y))) 52))
(assert (<= (+ (* (- 9) (str.len x)) (* (- 2) (str.len y))) 41))

(check-sat)