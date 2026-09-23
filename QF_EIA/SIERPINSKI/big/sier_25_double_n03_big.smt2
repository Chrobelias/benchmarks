(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 6 x) (* (- 2) (** 2 (+ 0 (* 4 x)))) (- (** 2 (** 2 (+ 0 (* 9 x)))))) 17) 0))
(check-sat)
(get-model)
