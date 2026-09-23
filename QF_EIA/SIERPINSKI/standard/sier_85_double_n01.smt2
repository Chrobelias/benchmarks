(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 5) (** 2 (+ 0 (* 9 x)))) (* 4 (** 2 (** 2 (+ 8 (* 5 x)))))) 79) 6))
(check-sat)
(get-model)
