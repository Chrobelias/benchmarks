(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (- x) (* 9 (exp 2 (+ 10 (* 0 x)))) (* (- 10) x)) 41) 13))
(check-sat)
(get-model)
