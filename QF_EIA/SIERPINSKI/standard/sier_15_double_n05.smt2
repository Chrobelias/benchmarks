(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 10 x) (* (- 2) (** 2 (+ 4 (* 9 x)))) (* (- 8) (** 2 (** 2 (+ 7 (* 0 x)))))) 10) 0))
(check-sat)
(get-model)
