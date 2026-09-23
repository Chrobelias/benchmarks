(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 9) x) (* (- 6) (** 2 (+ 7 (* 0 x)))) (* (- 3) (** 2 (** 2 (+ 0 (* 1 x)))))) 76) 25))
(check-sat)
(get-model)
