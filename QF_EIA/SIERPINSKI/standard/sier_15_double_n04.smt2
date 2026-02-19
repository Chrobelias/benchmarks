(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 9 x) (- (exp 2 (+ 10 (* 0 x)))) (* (- 7) (exp 2 (exp 2 (+ 0 (* 4 x)))))) 11) 3))
(check-sat)
(get-model)
