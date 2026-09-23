(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 6) x) (* (- 10) (** 2 (+ 0 (* 1 x)))) (* 9 (** 2 (** 2 (+ 1 (* 3 x)))))) 64) 10))
(check-sat)
(get-model)
