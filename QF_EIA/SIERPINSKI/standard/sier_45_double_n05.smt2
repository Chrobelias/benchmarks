(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 4) x) (* (- 5) (exp 2 (+ 0 (* 10 x)))) (* (- 5) (exp 2 (exp 2 (+ 0 (* 6 x)))))) 36) 3))
(check-sat)
(get-model)
