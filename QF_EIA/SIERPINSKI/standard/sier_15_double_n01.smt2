(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 3) (exp 2 (+ 10 (* 0 x)))) (* (- 5) (exp 2 (exp 2 (+ 1 (* 1 x)))))) 13) 9))
(check-sat)
(get-model)
