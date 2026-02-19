(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 6 x) (* (- 10) (exp 2 (+ 9 (* 0 x)))) (* 3 (exp 2 (exp 2 (+ 7 (* 0 x)))))) 73) 17))
(check-sat)
(get-model)
