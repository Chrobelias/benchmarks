(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 7) x) (* (- 7) (** 2 (+ 1 (* 0 x)))) (* 8 (** 2 (** 2 (+ 2 (* 0 x)))))) 67) 21))
(check-sat)
(get-model)
