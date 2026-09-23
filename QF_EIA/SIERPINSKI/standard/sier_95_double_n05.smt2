(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 2 x) (* 5 (** 2 (+ 5 (* 0 x)))) (* 9 (** 2 (** 2 (+ 0 (* 1 x)))))) 86) 40))
(check-sat)
(get-model)
