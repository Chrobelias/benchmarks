(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (- x) (* 3 (exp 2 (+ 0 (* 9 x)))) (* 9 x)) 14) 1))
(check-sat)
(get-model)
