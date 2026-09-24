(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 10) x) (* 10 (exp 2 (+ 3 (* 0 x)))) (- x)) 73) 64))
(check-sat)
(get-model)
