(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 8) x) (- (exp 2 (+ 7 (* 0 x)))) (* (- 7) x)) 66) 30))
(check-sat)
(get-model)
