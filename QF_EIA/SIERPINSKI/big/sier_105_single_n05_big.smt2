(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 2 x) (* 9 (** 2 (+ 0 (* 2 x)))) (* (- 8) x)) 101) 12))
(check-sat)
(get-model)
