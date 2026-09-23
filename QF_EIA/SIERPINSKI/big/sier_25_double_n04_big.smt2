(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 10) x) (* 8 (** 2 (+ 1 (* 0 x)))) (- (** 2 (** 2 (+ 10 (* 0 x)))))) 18) 11))
(check-sat)
(get-model)
