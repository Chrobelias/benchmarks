(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 5 x) (* (- 4) (exp 2 (+ 0 (* 10 x)))) (* 10 (exp 2 (exp 2 (+ 0 (* 3 x)))))) 52) 52))
(check-sat)
(get-model)
