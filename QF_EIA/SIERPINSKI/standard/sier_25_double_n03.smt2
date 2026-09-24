(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 9) x) (* (- 3) (exp 2 (+ 7 (* 0 x)))) (* (- 9) (exp 2 (exp 2 (+ 3 (* 0 x)))))) 24) 21))
(check-sat)
(get-model)
