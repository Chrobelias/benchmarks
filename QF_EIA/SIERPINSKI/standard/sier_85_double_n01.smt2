(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 5) (exp 2 (+ 0 (* 9 x)))) (* 4 (exp 2 (exp 2 (+ 8 (* 5 x)))))) 79) 6))
(check-sat)
(get-model)
