(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 10) x) (* (- 7) (exp 2 (+ 0 (* 4 x)))) (* 2 x)) 77) 17))
(check-sat)
(get-model)
