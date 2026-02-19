(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 10) x) (* (- 8) (exp 2 (+ 0 (* 9 x)))) (* 5 (exp 2 (exp 2 (+ 10 (* 0 x)))))) 66) 43))
(check-sat)
(get-model)
