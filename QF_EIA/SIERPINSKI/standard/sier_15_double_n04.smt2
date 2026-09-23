(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 9 x) (- (** 2 (+ 10 (* 0 x)))) (* (- 7) (** 2 (** 2 (+ 0 (* 4 x)))))) 11) 3))
(check-sat)
(get-model)
