(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ x (* (- 3) (** 2 (+ 10 (* 2 x)))) (* 7 (** 2 (** 2 (+ 6 (* 0 x)))))) 5) 3))
(check-sat)
(get-model)
