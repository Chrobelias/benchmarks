(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ x (* 3 (exp 2 (+ 0 (* 2 x)))) (* 9 x)) 54) 16))
(check-sat)
(get-model)
