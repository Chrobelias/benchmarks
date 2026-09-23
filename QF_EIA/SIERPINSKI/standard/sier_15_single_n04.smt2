(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (- x) (* (- 3) (** 2 (+ 5 (* 1 x)))) (* 2 x)) 15) 11))
(check-sat)
(get-model)
