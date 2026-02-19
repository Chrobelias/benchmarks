(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 5 (exp 2 (+ 5 (* 5 x)))) (- (exp 2 (exp 2 (+ 0 (* 5 x)))))) 18) 16))
(check-sat)
(get-model)
