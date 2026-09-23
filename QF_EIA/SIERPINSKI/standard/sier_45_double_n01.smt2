(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 x) (* (- 9) (** 2 (+ 3 (* 7 x)))) (* (- 2) (** 2 (** 2 (+ 1 (* 0 x)))))) 38) 1))
(check-sat)
(get-model)
