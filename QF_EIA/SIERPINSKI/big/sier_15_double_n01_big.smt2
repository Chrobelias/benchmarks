(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ x (* (- 3) (exp 2 (+ 10 (* 2 x)))) (* 7 (exp 2 (exp 2 (+ 6 (* 0 x)))))) 5) 3))
(check-sat)
(get-model)
