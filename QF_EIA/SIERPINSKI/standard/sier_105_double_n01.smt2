(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 x) (* 8 (** 2 (+ 0 (* 7 x)))) (* (- 2) (** 2 (** 2 (+ 8 (* 7 x)))))) 104) 35))
(check-sat)
(get-model)
