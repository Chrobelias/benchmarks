(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 x) (* (- 4) (** 2 (+ 7 (* 0 x)))) (* (- 4) (** 2 (** 2 (+ 4 (* 0 x)))))) 10) 0))
(check-sat)
(get-model)
