(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 2) x) (- (** 2 (+ 0 (* 3 x)))) (- (** 2 (** 2 (+ 0 (* 5 x)))))) 6) 5))
(check-sat)
(get-model)
