(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 x) (* 8 (exp 2 (+ 0 (* 7 x)))) (* (- 2) (exp 2 (exp 2 (+ 8 (* 7 x)))))) 104) 35))
(check-sat)
(get-model)
