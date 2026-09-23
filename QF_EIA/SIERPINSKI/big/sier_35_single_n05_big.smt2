(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 6 x) (* 10 (** 2 (+ 4 (* 10 x)))) (* (- 4) x)) 30) 27))
(check-sat)
(get-model)
