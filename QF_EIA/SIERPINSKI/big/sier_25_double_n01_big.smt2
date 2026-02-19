(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 4) x) (* (- 10) (exp 2 (+ 0 (* 9 x)))) (* (- 7) (exp 2 (exp 2 (+ 0 (* 6 x)))))) 23) 15))
(check-sat)
(get-model)
