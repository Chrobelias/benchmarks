(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 x) (* 10 (exp 2 (+ 1 (* 0 x)))) (* (- 9) (exp 2 (exp 2 (+ 8 (* 0 x)))))) 83) 3))
(check-sat)
(get-model)
