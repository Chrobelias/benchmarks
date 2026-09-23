(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 2 x) (* (- 2) (** 2 (+ 0 (* 8 x)))) (* (- 2) (** 2 (** 2 (+ 3 (* 4 x)))))) 55) 51))
(check-sat)
(get-model)
