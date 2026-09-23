(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* (- 10) (** 2 (+ 10 (* 0 x)))) (* 8 (** 2 (** 2 (+ 0 (* 8 x)))))) 31) 10))
(check-sat)
(get-model)
