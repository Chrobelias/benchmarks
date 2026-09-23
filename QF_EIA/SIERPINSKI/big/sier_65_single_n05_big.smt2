(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 3 x) (* (- 9) (** 2 (+ 0 (* 3 x)))) (* 2 x)) 62) 62))
(check-sat)
(get-model)
