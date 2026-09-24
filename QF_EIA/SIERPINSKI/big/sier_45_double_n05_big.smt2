(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 6) x) (- (exp 2 (+ 4 (* 0 x)))) (* (- 9) (exp 2 (exp 2 (+ 0 (* 7 x)))))) 37) 9))
(check-sat)
(get-model)
