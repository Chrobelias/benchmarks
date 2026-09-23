(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (- x) (- (** 2 (+ 0 (* 4 x)))) (* (- 5) (** 2 (** 2 (+ 4 (* 2 x)))))) 61) 30))
(check-sat)
(get-model)
