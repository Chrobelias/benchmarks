(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ x (* 9 (exp 2 (+ 0 (* 4 x)))) (* 4 x)) 13) 10))
(check-sat)
(get-model)
