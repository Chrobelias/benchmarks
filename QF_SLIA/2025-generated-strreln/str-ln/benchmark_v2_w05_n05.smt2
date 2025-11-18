(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (+ (str.len x) (* (- 8) (str.len y)) (* (- 10) (str.to_int y))) 72))
(assert (< (+ (str.len y) (* 9 (str.to_int x))) 6))
(assert (> (+ (* (- 4) (str.to_int x)) (* 2 (str.to_int y))) 0))

(check-sat)