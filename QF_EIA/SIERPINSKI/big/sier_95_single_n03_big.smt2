(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 4 x) (* 10 (exp 2 (+ 1 (* 0 x)))) (* (- 4) x)) 88) 70))
(check-sat)
(get-model)
