(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 8) x) (* 8 (** 2 (+ 0 (* 8 x)))) (* 7 x)) 60) 12))
(check-sat)
(get-model)
