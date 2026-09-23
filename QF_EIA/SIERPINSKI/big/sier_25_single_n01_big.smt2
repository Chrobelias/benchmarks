(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 2) x) (** 2 (+ 6 (* 0 x))) (* (- 3) x)) 20) 7))
(check-sat)
(get-model)
