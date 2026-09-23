(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ x (* 3 (** 2 (+ 0 (* 2 x)))) (* 9 x)) 54) 16))
(check-sat)
(get-model)
