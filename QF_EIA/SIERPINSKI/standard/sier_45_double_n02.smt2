(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 10 x) (* (- 7) (** 2 (+ 7 (* 0 x)))) (* 2 (** 2 (** 2 (+ 5 (* 0 x)))))) 38) 0))
(check-sat)
(get-model)
