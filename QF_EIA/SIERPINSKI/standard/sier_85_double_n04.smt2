(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 5) x) (* 2 (** 2 (+ 10 (* 0 x)))) (- (** 2 (** 2 (+ 5 (* 0 x)))))) 81) 74))
(check-sat)
(get-model)
