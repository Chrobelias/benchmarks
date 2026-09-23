(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (- x) (- (** 2 (+ 10 (* 0 x)))) (* 6 (** 2 (** 2 (+ 0 (* 4 x)))))) 87) 36))
(check-sat)
(get-model)
