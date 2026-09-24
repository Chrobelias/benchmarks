(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 5 x) (* (- 5) (exp 2 (+ 10 (* 0 x)))) (* (- 10) (exp 2 (exp 2 (+ 0 (* 6 x)))))) 85) 85))
(check-sat)
(get-model)
