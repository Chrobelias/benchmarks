(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 2) x) (- (exp 2 (+ 0 (* 6 x)))) x) 39) 14))
(check-sat)
(get-model)
