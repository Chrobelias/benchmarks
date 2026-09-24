(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (- (exp 2 (+ 6 (* 0 x)))) (* 3 (exp 2 (exp 2 (+ 10 (* 0 x)))))) 23) 19))
(check-sat)
(get-model)
