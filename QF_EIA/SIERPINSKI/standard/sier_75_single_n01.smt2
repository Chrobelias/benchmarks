(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 7) x) (* 2 (** 2 (+ 8 (* 0 x)))) (* 3 x)) 67) 2))
(check-sat)
(get-model)
