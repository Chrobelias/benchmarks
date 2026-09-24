(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 x) (* (- 5) (exp 2 (+ 0 (* 5 x)))) (* 5 x)) 77) 18))
(check-sat)
(get-model)
