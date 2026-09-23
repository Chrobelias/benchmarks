(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* 6 (** 2 (+ 10 (* 0 x)))) (* (- 5) (** 2 (** 2 (+ 0 (* 7 x)))))) 47) 43))
(check-sat)
(get-model)
