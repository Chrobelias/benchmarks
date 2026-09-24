(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 3) x) (* 7 (exp 2 (+ 0 (* 10 x)))) (* (- 5) (exp 2 (exp 2 (+ 4 (* 0 x)))))) 46) 19))
(check-sat)
(get-model)
