(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 4 x) (* 10 (** 2 (+ 1 (* 0 x)))) (* (- 4) x)) 88) 70))
(check-sat)
(get-model)
