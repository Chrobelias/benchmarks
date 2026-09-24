(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (- x) (* (- 3) (exp 2 (+ 5 (* 1 x)))) (* 2 x)) 15) 11))
(check-sat)
(get-model)
