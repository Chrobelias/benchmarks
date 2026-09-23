(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* (- 9) (** 2 (+ 4 (* 10 x)))) (* (- 8) (** 2 (** 2 (+ 3 (* 0 x)))))) 95) 95))
(check-sat)
(get-model)
