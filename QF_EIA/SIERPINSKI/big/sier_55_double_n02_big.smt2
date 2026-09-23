(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 4) x) (* (- 6) (** 2 (+ 10 (* 2 x)))) (* 2 (** 2 (** 2 (+ 0 (* 6 x)))))) 54) 14))
(check-sat)
(get-model)
