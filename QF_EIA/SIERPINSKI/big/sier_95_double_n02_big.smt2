(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 2) (exp 2 (+ 0 (* 9 x)))) (* 9 (exp 2 (exp 2 (+ 7 (* 0 x)))))) 85) 9))
(check-sat)
(get-model)
