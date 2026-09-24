(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 9) x) (* (- 5) (exp 2 (exp 2 (+ 5 (* 7 x)))))) 6) 0))
(check-sat)
(get-model)
