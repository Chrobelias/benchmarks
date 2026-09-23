(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 5 x) (* 7 (** 2 (+ 2 (* 0 x)))) (* (- 8) x)) 35) 32))
(check-sat)
(get-model)
