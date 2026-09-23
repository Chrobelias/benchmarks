(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (* (- 4) (** 2 (+ 6 (* 0 x)))) (* (- 9) x)) 90) 47))
(check-sat)
(get-model)
