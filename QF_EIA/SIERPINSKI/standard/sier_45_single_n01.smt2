(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 2) x) (* 5 (exp 2 (+ 4 (* 0 x)))) (* (- 10) x)) 35) 21))
(check-sat)
(get-model)
