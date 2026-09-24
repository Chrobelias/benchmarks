(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 8) x) (* 6 (exp 2 (+ 10 (* 0 x)))) (* (- 5) (exp 2 (exp 2 (+ 0 (* 7 x)))))) 47) 43))
(check-sat)
(get-model)
