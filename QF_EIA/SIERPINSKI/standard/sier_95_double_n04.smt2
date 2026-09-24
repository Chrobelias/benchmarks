(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 6) x) (* 5 (exp 2 (+ 7 (* 0 x)))) (* 5 (exp 2 (exp 2 (+ 7 (* 0 x)))))) 95) 20))
(check-sat)
(get-model)
