(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (** 2 (+ 0 (* 4 x))) (* (- 6) x)) 92) 80))
(check-sat)
(get-model)
