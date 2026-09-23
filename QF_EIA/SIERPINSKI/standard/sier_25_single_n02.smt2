(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 10 x) (* (- 2) (** 2 (+ 9 (* 4 x)))) (- x)) 20) 17))
(check-sat)
(get-model)
