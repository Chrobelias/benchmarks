(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (- (exp 2 (+ 0 (* 8 x)))) (* 6 x)) 81) 10))
(check-sat)
(get-model)
