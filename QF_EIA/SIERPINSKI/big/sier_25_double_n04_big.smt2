(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 10) x) (* 8 (exp 2 (+ 1 (* 0 x)))) (- (exp 2 (exp 2 (+ 10 (* 0 x)))))) 18) 11))
(check-sat)
(get-model)
