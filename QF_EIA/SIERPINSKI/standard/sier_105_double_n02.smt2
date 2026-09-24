(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 6 x) (* 4 (exp 2 (+ 0 (* 8 x)))) (* 10 (exp 2 (exp 2 (+ 1 (* 0 x)))))) 96) 76))
(check-sat)
(get-model)
