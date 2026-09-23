(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 2) (** 2 (+ 0 (* 4 x)))) (* 8 (** 2 (** 2 (+ 9 (* 2 x)))))) 59) 57))
(check-sat)
(get-model)
