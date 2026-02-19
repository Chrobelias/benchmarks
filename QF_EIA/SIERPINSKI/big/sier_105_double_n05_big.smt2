(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 2 x) (exp 2 (+ 7 (* 0 x))) (* (- 2) (exp 2 (exp 2 (+ 8 (* 0 x)))))) 95) 21))
(check-sat)
(get-model)
