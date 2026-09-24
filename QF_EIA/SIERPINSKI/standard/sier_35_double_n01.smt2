(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* 10 (exp 2 (+ 5 (* 0 x)))) (* (- 5) (exp 2 (exp 2 (+ 0 (* 4 x)))))) 27) 16))
(check-sat)
(get-model)
