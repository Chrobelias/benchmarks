(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 9) x) (* 9 (exp 2 (+ 0 (* 4 x)))) (* 5 (exp 2 (exp 2 (+ 2 (* 0 x)))))) 89) 20))
(check-sat)
(get-model)
