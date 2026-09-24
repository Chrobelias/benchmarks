(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 9) x) (* (- 6) (exp 2 (+ 7 (* 0 x)))) (* (- 3) (exp 2 (exp 2 (+ 0 (* 1 x)))))) 76) 25))
(check-sat)
(get-model)
