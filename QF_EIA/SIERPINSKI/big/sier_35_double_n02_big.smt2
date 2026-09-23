(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (* (- 9) (** 2 (** 2 (+ 5 (* 0 x))))) 30) 13))
(check-sat)
(get-model)
