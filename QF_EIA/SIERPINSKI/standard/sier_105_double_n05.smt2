(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ x (* (- 6) (exp 2 (+ 2 (* 0 x)))) (* 10 (exp 2 (exp 2 (+ 0 (* 3 x)))))) 104) 60))
(check-sat)
(get-model)
