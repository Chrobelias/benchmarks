(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (* 5 (exp 2 (+ 7 (* 0 x)))) (* 5 x)) 91) 7))
(check-sat)
(get-model)
