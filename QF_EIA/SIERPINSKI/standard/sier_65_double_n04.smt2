(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 6) x) (* (- 10) (exp 2 (+ 0 (* 1 x)))) (* 9 (exp 2 (exp 2 (+ 1 (* 3 x)))))) 64) 10))
(check-sat)
(get-model)
