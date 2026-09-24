(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 10 x) (* 7 (exp 2 (+ 4 (* 0 x)))) (- (exp 2 (exp 2 (+ 9 (* 0 x)))))) 94) 7))
(check-sat)
(get-model)
