(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 9) x) (* 4 (** 2 (+ 3 (* 0 x)))) (* 5 x)) 92) 6))
(check-sat)
(get-model)
