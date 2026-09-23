(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 5 x) (- (** 2 (+ 6 (* 0 x)))) (- x)) 98) 15))
(check-sat)
(get-model)
