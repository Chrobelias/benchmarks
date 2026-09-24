(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (- x) (- (exp 2 (+ 0 (* 4 x)))) (* (- 5) (exp 2 (exp 2 (+ 4 (* 2 x)))))) 61) 30))
(check-sat)
(get-model)
