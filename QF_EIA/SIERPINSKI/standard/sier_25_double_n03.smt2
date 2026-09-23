(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 9) x) (* (- 3) (** 2 (+ 7 (* 0 x)))) (* (- 9) (** 2 (** 2 (+ 3 (* 0 x)))))) 24) 21))
(check-sat)
(get-model)
