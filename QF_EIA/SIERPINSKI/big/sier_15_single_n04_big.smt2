(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (* 7 x) 10) 5))
(check-sat)
(get-model)
