(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 3) x) (* 10 (** 2 (+ 1 (* 0 x)))) (* 2 x)) 86) 39))
(check-sat)
(get-model)
