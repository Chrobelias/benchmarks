(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 3 x) (* (- 2) (exp 2 (exp 2 (+ 5 (* 10 x)))))) 38) 38))
(check-sat)
(get-model)
