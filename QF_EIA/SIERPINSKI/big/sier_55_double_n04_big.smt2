(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 6) x) (* (- 2) (** 2 (+ 0 (* 3 x)))) (* 8 (** 2 (** 2 (+ 0 (* 9 x)))))) 50) 24))
(check-sat)
(get-model)
