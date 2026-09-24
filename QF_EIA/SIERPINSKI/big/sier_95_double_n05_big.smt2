(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (- x) (- (exp 2 (+ 10 (* 0 x)))) (* 6 (exp 2 (exp 2 (+ 0 (* 4 x)))))) 87) 36))
(check-sat)
(get-model)
