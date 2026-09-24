(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 2 x) (* (- 10) (exp 2 (+ 0 (* 8 x)))) (* (- 9) (exp 2 (exp 2 (+ 6 (* 0 x)))))) 64) 21))
(check-sat)
(get-model)
