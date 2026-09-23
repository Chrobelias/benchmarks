(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (- (** 2 (+ 0 (* 5 x)))) (- (** 2 (** 2 (+ 3 (* 9 x)))))) 32) 21))
(check-sat)
(get-model)
