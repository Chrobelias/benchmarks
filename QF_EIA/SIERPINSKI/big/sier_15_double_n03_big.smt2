(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 2 x) (* (- 4) (exp 2 (+ 5 (* 0 x)))) (* (- 2) (exp 2 (exp 2 (+ 0 (* 3 x)))))) 6) 3))
(check-sat)
(get-model)
