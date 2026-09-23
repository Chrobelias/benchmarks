(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 7 x) (* (- 10) (** 2 (+ 4 (* 0 x)))) (* 6 (** 2 (** 2 (+ 0 (* 3 x)))))) 56) 43))
(check-sat)
(get-model)
