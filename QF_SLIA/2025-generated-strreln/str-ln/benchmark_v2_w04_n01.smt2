(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (+ (* (- 5) (str.len x)) (* 7 (str.to_int y))) 40))
(assert (<= (+ (* (- 10) (str.len x)) (* 6 (str.len y))) 14))
(assert (= (+ (* 9 (str.to_int x)) (* (- 4) (str.to_int y))) 47))

(check-sat)