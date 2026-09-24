(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 3) x) (- (exp 2 (+ 8 (* 0 x)))) (* 5 x)) 59) 4))
(check-sat)
(get-model)
