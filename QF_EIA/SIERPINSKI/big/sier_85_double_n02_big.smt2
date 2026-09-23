(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 5 x) (* (- 5) (** 2 (+ 10 (* 0 x)))) (* (- 10) (** 2 (** 2 (+ 0 (* 6 x)))))) 85) 85))
(check-sat)
(get-model)
