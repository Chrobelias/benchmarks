(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 x) (* (- 9) (exp 2 (+ 3 (* 7 x)))) (* (- 2) (exp 2 (exp 2 (+ 1 (* 0 x)))))) 38) 1))
(check-sat)
(get-model)
