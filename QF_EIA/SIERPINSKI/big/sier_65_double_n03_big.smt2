(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 2 x) (* (- 10) (** 2 (+ 0 (* 8 x)))) (* (- 9) (** 2 (** 2 (+ 6 (* 0 x)))))) 64) 21))
(check-sat)
(get-model)
