(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 x) (* 3 (** 2 (+ 1 (* 9 x)))) (* (- 10) x)) 70) 47))
(check-sat)
(get-model)
