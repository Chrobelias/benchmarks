(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 9) x) (* 7 (exp 2 (+ 0 (* 5 x)))) (* 4 (exp 2 (exp 2 (+ 6 (* 0 x)))))) 27) 18))
(check-sat)
(get-model)
