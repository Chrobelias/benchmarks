(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (< (+ (* 10 (str.len x)) (* (- 8) (str.len y))) 42))
(assert (< (+ (str.to_int x) (* 4 (str.to_int y))) 67))
(assert (= (+ (* 7 (str.to_int x)) (* (- 5) (str.to_int y))) 1))
(assert (> (+ (* 3 (str.len x)) (* (- 9) (str.to_int x))) 39))
(assert (>= (+ (* 6 (str.len x)) (str.len y)) 84))

(check-sat)