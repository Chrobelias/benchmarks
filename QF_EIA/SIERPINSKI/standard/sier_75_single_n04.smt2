(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 2 x) (* (- 2) (** 2 (+ 7 (* 7 x)))) (* (- 3) x)) 75) 33))
(check-sat)
(get-model)
