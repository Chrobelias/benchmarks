(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 3) x) (* 7 (** 2 (+ 0 (* 5 x)))) (* (- 5) (** 2 (** 2 (+ 6 (* 9 x)))))) 68) 30))
(check-sat)
(get-model)
