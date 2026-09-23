(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 9 x) (* 10 (** 2 (+ 0 (* 1 x)))) (* (- 8) (** 2 (** 2 (+ 0 (* 5 x)))))) 77) 13))
(check-sat)
(get-model)
