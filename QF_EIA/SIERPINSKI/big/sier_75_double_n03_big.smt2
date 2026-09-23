(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 10 x) (* (- 7) (** 2 (+ 1 (* 0 x)))) (* 6 (** 2 (** 2 (+ 5 (* 5 x)))))) 75) 24))
(check-sat)
(get-model)
