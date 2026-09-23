(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 10) x) (* (- 8) (** 2 (+ 6 (* 0 x)))) (* 3 x)) 99) 8))
(check-sat)
(get-model)
