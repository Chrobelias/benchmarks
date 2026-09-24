(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* (- 9) (exp 2 (+ 10 (* 3 x)))) (* 3 (exp 2 (exp 2 (+ 3 (* 0 x)))))) 98) 0))
(check-sat)
(get-model)
