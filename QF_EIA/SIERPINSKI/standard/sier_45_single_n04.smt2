(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 6) x) (* (- 3) (exp 2 (+ 2 (* 0 x)))) (* 10 x)) 40) 3))
(check-sat)
(get-model)
