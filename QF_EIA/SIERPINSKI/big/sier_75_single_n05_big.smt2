(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (* (- 9) (exp 2 (+ 5 (* 0 x)))) (* (- 6) x)) 67) 33))
(check-sat)
(get-model)
