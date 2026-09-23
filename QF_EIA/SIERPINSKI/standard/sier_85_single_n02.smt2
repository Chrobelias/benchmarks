(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (- (** 2 (+ 0 (* 8 x)))) (* 6 x)) 81) 10))
(check-sat)
(get-model)
