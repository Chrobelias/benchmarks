(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (<= (+ (* (- 10) (str.len x)) (* (- 2) (str.len y))) 51))
(assert (>= (+ (* (- 8) (str.len x)) (* 6 (str.to_int y))) 87))
(assert (>= (+ (str.len y) (* (- 4) (str.to_int x)) (* (- 3) (str.to_int y))) 84))

(check-sat)