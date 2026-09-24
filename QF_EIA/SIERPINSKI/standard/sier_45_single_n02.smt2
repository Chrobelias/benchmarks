(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 4 x) (* 10 (exp 2 (+ 6 (* 0 x)))) (- x)) 38) 30))
(check-sat)
(get-model)
