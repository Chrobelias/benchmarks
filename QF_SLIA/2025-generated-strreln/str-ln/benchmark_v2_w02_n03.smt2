(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (<= (+ (* 4 (str.to_int x)) (* (- 9) (str.to_int y))) 94))
(assert (> (* 2 (str.len x)) 96))

(check-sat)