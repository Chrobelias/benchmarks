(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 7 x) (* (- 5) (exp 2 (+ 8 (* 0 x)))) (* (- 7) x)) 89) 29))
(check-sat)
(get-model)
