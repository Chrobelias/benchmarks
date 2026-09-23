(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ x (* 5 (** 2 (+ 5 (* 0 x)))) (* (- 10) x)) 104) 18))
(check-sat)
(get-model)
