(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 6 x) (* (- 10) (** 2 (+ 9 (* 0 x)))) (* 3 (** 2 (** 2 (+ 7 (* 0 x)))))) 73) 17))
(check-sat)
(get-model)
