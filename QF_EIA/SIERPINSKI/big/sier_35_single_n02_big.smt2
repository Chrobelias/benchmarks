(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (* 4 (** 2 (+ 0 (* 2 x)))) (* (- 10) x)) 25) 0))
(check-sat)
(get-model)
