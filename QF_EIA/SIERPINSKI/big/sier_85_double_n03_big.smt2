(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 3 x) (- (** 2 (+ 0 (* 6 x)))) (* 8 (** 2 (** 2 (+ 9 (* 0 x)))))) 85) 47))
(check-sat)
(get-model)
