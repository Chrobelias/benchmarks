(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 10) x) (* (- 4) (exp 2 (exp 2 (+ 5 (* 0 x)))))) 75) 62))
(check-sat)
(get-model)
