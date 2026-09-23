(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ x (* (- 4) (** 2 (+ 7 (* 0 x)))) (* (- 3) x)) 12) 5))
(check-sat)
(get-model)
