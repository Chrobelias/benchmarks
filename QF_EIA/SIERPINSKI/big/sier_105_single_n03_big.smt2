(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 3 x) (* (- 10) (** 2 (+ 7 (* 0 x)))) (* 8 x)) 98) 55))
(check-sat)
(get-model)
