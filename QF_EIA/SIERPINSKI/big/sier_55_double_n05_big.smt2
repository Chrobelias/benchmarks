(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 9) x) (* (- 6) (exp 2 (+ 3 (* 0 x)))) (- (exp 2 (exp 2 (+ 0 (* 2 x)))))) 46) 34))
(check-sat)
(get-model)
