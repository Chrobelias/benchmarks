(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* (- 10) (exp 2 (+ 10 (* 0 x)))) (* 8 (exp 2 (exp 2 (+ 0 (* 8 x)))))) 31) 10))
(check-sat)
(get-model)
