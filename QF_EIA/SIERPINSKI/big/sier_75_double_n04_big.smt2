(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 8) x) (* 3 (** 2 (+ 0 (* 4 x)))) (* (- 8) (** 2 (** 2 (+ 0 (* 2 x)))))) 68) 61))
(check-sat)
(get-model)
