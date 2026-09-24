(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* (- 9) (exp 2 (+ 4 (* 10 x)))) (* (- 8) (exp 2 (exp 2 (+ 3 (* 0 x)))))) 95) 95))
(check-sat)
(get-model)
