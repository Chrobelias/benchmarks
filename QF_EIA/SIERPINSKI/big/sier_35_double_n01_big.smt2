(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 8) x) (- (exp 2 (+ 7 (* 0 x)))) (* 2 (exp 2 (exp 2 (+ 0 (* 3 x)))))) 33) 16))
(check-sat)
(get-model)
