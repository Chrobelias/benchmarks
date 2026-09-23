(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 10 x) (* (- 6) (** 2 (+ 0 (* 9 x)))) (* (- 9) (** 2 (** 2 (+ 1 (* 0 x)))))) 39) 32))
(check-sat)
(get-model)
