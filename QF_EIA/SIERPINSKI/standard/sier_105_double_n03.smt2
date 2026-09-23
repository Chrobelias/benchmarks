(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* (- 9) (** 2 (+ 10 (* 3 x)))) (* 3 (** 2 (** 2 (+ 3 (* 0 x)))))) 98) 0))
(check-sat)
(get-model)
