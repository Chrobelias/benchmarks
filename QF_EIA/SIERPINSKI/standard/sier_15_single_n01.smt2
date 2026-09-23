(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 6) x) (* (- 3) (** 2 (+ 0 (* 10 x))))) 13) 1))
(check-sat)
(get-model)
