(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 x) (- (** 2 (+ 0 (* 5 x)))) (- (** 2 (** 2 (+ 0 (* 4 x)))))) 37) 11))
(check-sat)
(get-model)
