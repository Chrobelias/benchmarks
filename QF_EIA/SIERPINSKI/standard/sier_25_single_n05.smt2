(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 6) x) (- (exp 2 (+ 0 (* 8 x)))) (* 9 x)) 17) 8))
(check-sat)
(get-model)
