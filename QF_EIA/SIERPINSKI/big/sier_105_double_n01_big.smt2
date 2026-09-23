(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 7 x) (* (- 5) (** 2 (+ 6 (* 0 x)))) (* (- 5) (** 2 (** 2 (+ 6 (* 0 x)))))) 101) 97))
(check-sat)
(get-model)
