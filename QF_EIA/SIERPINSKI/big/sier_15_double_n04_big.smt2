(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 2 x) (* 4 (exp 2 (+ 5 (* 0 x)))) (* (- 3) (exp 2 (exp 2 (+ 0 (* 4 x)))))) 12) 11))
(check-sat)
(get-model)
