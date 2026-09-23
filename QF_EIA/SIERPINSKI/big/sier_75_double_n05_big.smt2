(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 6 x) (* 10 (** 2 (+ 8 (* 9 x)))) (* 5 (** 2 (** 2 (+ 2 (* 0 x)))))) 69) 19))
(check-sat)
(get-model)
