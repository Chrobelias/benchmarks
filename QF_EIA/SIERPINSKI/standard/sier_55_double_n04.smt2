(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 5 x) (* (- 4) (** 2 (+ 0 (* 10 x)))) (* 10 (** 2 (** 2 (+ 0 (* 3 x)))))) 52) 52))
(check-sat)
(get-model)
