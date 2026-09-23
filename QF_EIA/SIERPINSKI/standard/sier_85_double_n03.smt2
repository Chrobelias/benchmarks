(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 x) (* 10 (** 2 (+ 1 (* 0 x)))) (* (- 9) (** 2 (** 2 (+ 8 (* 0 x)))))) 83) 3))
(check-sat)
(get-model)
