(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ x (* (- 7) (exp 2 (+ 9 (* 0 x)))) (* 2 (exp 2 (exp 2 (+ 0 (* 3 x)))))) 20) 20))
(check-sat)
(get-model)
