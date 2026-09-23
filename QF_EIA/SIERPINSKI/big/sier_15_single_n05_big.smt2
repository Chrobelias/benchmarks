(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 7) x) (* 9 (** 2 (+ 0 (* 1 x)))) (* 9 x)) 12) 12))
(check-sat)
(get-model)
