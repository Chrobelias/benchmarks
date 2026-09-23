(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 4) x) (* 10 (** 2 (+ 3 (* 1 x)))) (* (- 7) (** 2 (** 2 (+ 0 (* 9 x)))))) 18) 0))
(check-sat)
(get-model)
