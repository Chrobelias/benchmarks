(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 7) (exp 2 (+ 1 (* 0 x)))) (- (exp 2 (exp 2 (+ 10 (* 0 x)))))) 40) 38))
(check-sat)
(get-model)
