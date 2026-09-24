(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 10 x) (* (- 7) (exp 2 (+ 7 (* 0 x)))) (* 2 (exp 2 (exp 2 (+ 5 (* 0 x)))))) 38) 0))
(check-sat)
(get-model)
