(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 2) (exp 2 (+ 0 (* 7 x)))) (* 3 (exp 2 (exp 2 (+ 0 (* 6 x)))))) 100) 32))
(check-sat)
(get-model)
