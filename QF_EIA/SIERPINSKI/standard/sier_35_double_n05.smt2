(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* (- 4) (exp 2 (+ 7 (* 7 x)))) (* (- 8) (exp 2 (exp 2 (+ 0 (* 8 x)))))) 30) 30))
(check-sat)
(get-model)
