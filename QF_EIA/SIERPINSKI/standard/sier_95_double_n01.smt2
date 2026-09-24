(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 9) x) (* 7 (exp 2 (+ 6 (* 0 x)))) (* (- 6) (exp 2 (exp 2 (+ 2 (* 0 x)))))) 88) 49))
(check-sat)
(get-model)
