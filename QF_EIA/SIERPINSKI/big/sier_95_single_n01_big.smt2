(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 8) x) (* (- 6) (exp 2 (+ 4 (* 0 x)))) (* 5 x)) 88) 36))
(check-sat)
(get-model)
