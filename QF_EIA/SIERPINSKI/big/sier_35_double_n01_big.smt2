(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 8) x) (- (** 2 (+ 7 (* 0 x)))) (* 2 (** 2 (** 2 (+ 0 (* 3 x)))))) 33) 16))
(check-sat)
(get-model)
