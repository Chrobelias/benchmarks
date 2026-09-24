(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 4) x) (* 10 (exp 2 (+ 3 (* 1 x)))) (* (- 7) (exp 2 (exp 2 (+ 0 (* 9 x)))))) 18) 0))
(check-sat)
(get-model)
