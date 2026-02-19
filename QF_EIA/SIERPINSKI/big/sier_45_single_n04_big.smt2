(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 6 x) (* (- 6) (exp 2 (+ 0 (* 6 x)))) (- x)) 38) 6))
(check-sat)
(get-model)
