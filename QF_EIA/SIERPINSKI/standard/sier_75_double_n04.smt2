(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 10) x) (* (- 8) (** 2 (+ 0 (* 9 x)))) (* 5 (** 2 (** 2 (+ 10 (* 0 x)))))) 66) 43))
(check-sat)
(get-model)
