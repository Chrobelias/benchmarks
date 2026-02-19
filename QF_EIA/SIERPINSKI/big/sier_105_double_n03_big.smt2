(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 5 x) (* 4 (exp 2 (+ 1 (* 0 x)))) (* (- 6) (exp 2 (exp 2 (+ 5 (* 0 x)))))) 95) 6))
(check-sat)
(get-model)
