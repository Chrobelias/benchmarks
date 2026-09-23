(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (- x) (* (- 7) (** 2 (+ 4 (* 0 x)))) (* (- 4) x)) 47) 9))
(check-sat)
(get-model)
