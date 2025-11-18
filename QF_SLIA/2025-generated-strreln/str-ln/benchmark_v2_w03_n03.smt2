(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (< (+ (* 6 (str.to_int x)) (* 5 (str.to_int y))) 33))
(assert (= (+ (str.len x) (* (- 9) (str.len y))) 91))
(assert (> (+ (* 4 (str.to_int x)) (* 2 (str.to_int y))) 9))

(check-sat)