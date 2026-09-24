(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 x) (* 7 (exp 2 (+ 5 (* 0 x)))) (* (- 8) (exp 2 (exp 2 (+ 0 (* 1 x)))))) 31) 14))
(check-sat)
(get-model)
