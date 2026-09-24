(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 2) x) (* 9 (exp 2 (+ 2 (* 0 x)))) (* 8 x)) 78) 65))
(check-sat)
(get-model)
