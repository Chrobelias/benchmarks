(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (+ (* (- 6) (str.len x)) (* 10 (str.to_int x)) (* 5 (str.to_int y))) 56))
(assert (> (+ (* (- 2) (str.len x)) (* 6 (str.len y))) 96))

(check-sat)