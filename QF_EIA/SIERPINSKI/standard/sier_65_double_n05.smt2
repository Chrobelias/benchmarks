(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 7) x) (* 3 (** 2 (+ 0 (* 1 x)))) (- (** 2 (** 2 (+ 5 (* 6 x)))))) 56) 20))
(check-sat)
(get-model)
