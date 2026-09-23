(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 10) x) (* 10 (** 2 (+ 3 (* 0 x)))) (- x)) 73) 64))
(check-sat)
(get-model)
