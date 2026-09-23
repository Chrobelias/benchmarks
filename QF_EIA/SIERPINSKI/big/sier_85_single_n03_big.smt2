(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 4 x) (* 2 (** 2 (+ 0 (* 4 x)))) (* (- 4) x)) 77) 37))
(check-sat)
(get-model)
