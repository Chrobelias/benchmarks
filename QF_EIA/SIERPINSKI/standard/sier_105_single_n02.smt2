(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 5 x) (- (exp 2 (+ 6 (* 0 x)))) (- x)) 98) 15))
(check-sat)
(get-model)
