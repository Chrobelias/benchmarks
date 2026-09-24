(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 5) x) (* (- 10) (exp 2 (+ 0 (* 6 x)))) (* (- 6) x)) 25) 15))
(check-sat)
(get-model)
