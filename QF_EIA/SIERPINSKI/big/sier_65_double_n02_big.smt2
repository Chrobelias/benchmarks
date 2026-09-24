(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 9 x) (* 9 (exp 2 (+ 6 (* 0 x)))) (* 9 (exp 2 (exp 2 (+ 0 (* 1 x)))))) 64) 28))
(check-sat)
(get-model)
