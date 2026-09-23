(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (- (** 2 (+ 6 (* 0 x)))) (* 3 (** 2 (** 2 (+ 10 (* 0 x)))))) 23) 19))
(check-sat)
(get-model)
