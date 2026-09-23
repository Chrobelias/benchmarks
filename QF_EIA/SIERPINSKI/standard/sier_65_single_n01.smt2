(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 10 x) (* (- 7) (** 2 (+ 6 (* 10 x)))) (- x)) 55) 5))
(check-sat)
(get-model)
