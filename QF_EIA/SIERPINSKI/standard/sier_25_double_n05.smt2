(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ x (* (- 7) (** 2 (+ 9 (* 0 x)))) (* 2 (** 2 (** 2 (+ 0 (* 3 x)))))) 20) 20))
(check-sat)
(get-model)
