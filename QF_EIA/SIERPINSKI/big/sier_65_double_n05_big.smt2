(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 7) x) (* (- 9) (exp 2 (+ 1 (* 0 x)))) (* 5 (exp 2 (exp 2 (+ 7 (* 0 x)))))) 63) 21))
(check-sat)
(get-model)
