(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 3 x) (* 7 (** 2 (+ 0 (* 6 x)))) (* (- 2) x)) 47) 23))
(check-sat)
(get-model)
