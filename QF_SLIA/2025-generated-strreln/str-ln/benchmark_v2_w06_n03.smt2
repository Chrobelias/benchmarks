(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (+ (str.to_int x) (* 2 (str.to_int y))) 27))
(assert (<= (+ (* (- 7) (str.to_int x)) (* (- 4) (str.to_int y))) 25))
(assert (> (+ (* (- 8) (str.len x)) (* 6 (str.len y))) 4))
(assert (<= (+ (* (- 6) (str.len x)) (* 10 (str.len y))) 52))
(assert (<= (+ (* (- 7) (str.len x)) (* 7 (str.len y))) 59))
(assert (= (+ (* 7 (str.to_int x)) (* (- 8) (str.to_int y))) 60))

(check-sat)