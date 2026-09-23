(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 8 x) (* 3 (** 2 (+ 0 (* 7 x)))) (* (- 2) x)) 22) 0))
(check-sat)
(get-model)
