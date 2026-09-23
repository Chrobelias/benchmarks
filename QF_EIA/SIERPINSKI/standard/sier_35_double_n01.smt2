(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* 10 (** 2 (+ 5 (* 0 x)))) (* (- 5) (** 2 (** 2 (+ 0 (* 4 x)))))) 27) 16))
(check-sat)
(get-model)
