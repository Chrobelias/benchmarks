(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* (- 4) (** 2 (+ 7 (* 7 x)))) (* (- 8) (** 2 (** 2 (+ 0 (* 8 x)))))) 30) 30))
(check-sat)
(get-model)
