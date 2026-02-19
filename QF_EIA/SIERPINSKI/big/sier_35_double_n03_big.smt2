(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 10 x) (* 8 (exp 2 (+ 2 (* 0 x)))) (* 8 (exp 2 (exp 2 (+ 0 (* 3 x)))))) 25) 19))
(check-sat)
(get-model)
