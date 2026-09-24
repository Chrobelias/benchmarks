(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 6) x) (* 8 (exp 2 (+ 0 (* 2 x)))) (* 7 (exp 2 (exp 2 (+ 9 (* 2 x)))))) 75) 23))
(check-sat)
(get-model)
