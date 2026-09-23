(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ x (* (- 7) (** 2 (+ 10 (* 10 x)))) (* (- 10) (** 2 (** 2 (+ 0 (* 7 x)))))) 90) 36))
(check-sat)
(get-model)
