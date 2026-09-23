(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 3) x) (* 7 (** 2 (+ 0 (* 10 x)))) (* (- 5) (** 2 (** 2 (+ 4 (* 0 x)))))) 46) 19))
(check-sat)
(get-model)
