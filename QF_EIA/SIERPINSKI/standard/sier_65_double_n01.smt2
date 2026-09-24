(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 2) (exp 2 (+ 0 (* 4 x)))) (* 8 (exp 2 (exp 2 (+ 9 (* 2 x)))))) 59) 57))
(check-sat)
(get-model)
