(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 6) x) (* (- 8) (** 2 (+ 0 (* 6 x)))) (* (- 6) (** 2 (** 2 (+ 0 (* 4 x)))))) 42) 3))
(check-sat)
(get-model)
