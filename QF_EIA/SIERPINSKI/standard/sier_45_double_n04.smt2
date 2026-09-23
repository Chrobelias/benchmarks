(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 7) (** 2 (+ 1 (* 0 x)))) (- (** 2 (** 2 (+ 10 (* 0 x)))))) 40) 38))
(check-sat)
(get-model)
