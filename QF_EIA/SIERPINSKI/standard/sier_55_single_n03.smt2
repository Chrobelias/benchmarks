(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 2 x) (* (- 4) (exp 2 (+ 0 (* 10 x)))) (* 10 x)) 55) 38))
(check-sat)
(get-model)
