(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ x (* (- 6) (** 2 (+ 2 (* 0 x)))) (* 10 (** 2 (** 2 (+ 0 (* 3 x)))))) 104) 60))
(check-sat)
(get-model)
