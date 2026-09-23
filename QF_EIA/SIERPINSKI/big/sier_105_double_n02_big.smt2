(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ x (* (- 6) (** 2 (+ 0 (* 1 x)))) (** 2 (** 2 (+ 6 (* 0 x))))) 103) 10))
(check-sat)
(get-model)
