(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ x (* (- 6) (exp 2 (+ 0 (* 1 x)))) (exp 2 (exp 2 (+ 6 (* 0 x))))) 103) 10))
(check-sat)
(get-model)
