(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 2 x) (* 6 (exp 2 (+ 0 (* 8 x)))) (* (- 5) x)) 87) 38))
(check-sat)
(get-model)
