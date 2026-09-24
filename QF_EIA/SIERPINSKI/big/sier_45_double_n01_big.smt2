(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 10 x) (* (- 6) (exp 2 (+ 0 (* 9 x)))) (* (- 9) (exp 2 (exp 2 (+ 1 (* 0 x)))))) 39) 32))
(check-sat)
(get-model)
