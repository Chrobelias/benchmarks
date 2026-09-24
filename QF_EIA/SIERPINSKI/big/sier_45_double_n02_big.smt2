(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 6) x) (* (- 8) (exp 2 (+ 0 (* 6 x)))) (* (- 6) (exp 2 (exp 2 (+ 0 (* 4 x)))))) 42) 3))
(check-sat)
(get-model)
