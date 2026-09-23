(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 7 x) (* (- 3) (** 2 (+ 1 (* 0 x)))) (* (- 7) x)) 60) 29))
(check-sat)
(get-model)
