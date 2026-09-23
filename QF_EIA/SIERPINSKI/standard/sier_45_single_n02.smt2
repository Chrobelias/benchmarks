(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 x) (* 10 (** 2 (+ 6 (* 0 x)))) (- x)) 38) 30))
(check-sat)
(get-model)
