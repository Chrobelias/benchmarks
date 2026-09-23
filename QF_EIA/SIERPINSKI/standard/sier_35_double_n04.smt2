(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 9) x) (* 7 (** 2 (+ 0 (* 5 x)))) (* 4 (** 2 (** 2 (+ 6 (* 0 x)))))) 27) 18))
(check-sat)
(get-model)
