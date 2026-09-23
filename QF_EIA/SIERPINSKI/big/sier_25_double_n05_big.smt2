(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 5 (** 2 (+ 5 (* 5 x)))) (- (** 2 (** 2 (+ 0 (* 5 x)))))) 18) 16))
(check-sat)
(get-model)
