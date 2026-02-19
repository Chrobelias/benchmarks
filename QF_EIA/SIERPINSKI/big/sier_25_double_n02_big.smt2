(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 7 x) (* (- 10) (exp 2 (+ 8 (* 0 x)))) (* (- 5) (exp 2 (exp 2 (+ 0 (* 10 x)))))) 23) 13))
(check-sat)
(get-model)
