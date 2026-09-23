(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 6) x) (* 3 (** 2 (+ 6 (* 0 x)))) (* (- 7) x)) 21) 4))
(check-sat)
(get-model)
