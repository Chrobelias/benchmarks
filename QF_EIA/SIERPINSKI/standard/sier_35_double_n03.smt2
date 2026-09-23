(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 x) (* 7 (** 2 (+ 5 (* 0 x)))) (* (- 8) (** 2 (** 2 (+ 0 (* 1 x)))))) 31) 14))
(check-sat)
(get-model)
