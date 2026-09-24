(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 7 x) (* 10 (exp 2 (+ 4 (* 4 x)))) (* 9 (exp 2 (exp 2 (+ 0 (* 3 x)))))) 93) 81))
(check-sat)
(get-model)
