(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 8 x) (* (- 6) (exp 2 (+ 2 (* 3 x)))) (* (- 8) (exp 2 (exp 2 (+ 2 (* 0 x)))))) 97) 79))
(check-sat)
(get-model)
