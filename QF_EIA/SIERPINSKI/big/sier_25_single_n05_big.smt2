(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 9) x) (* (- 5) (exp 2 (+ 8 (* 0 x)))) (* 8 x)) 17) 13))
(check-sat)
(get-model)
