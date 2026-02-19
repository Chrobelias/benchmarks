(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 9 x) (* (- 9) (exp 2 (+ 4 (* 0 x)))) (* (- 6) x)) 75) 65))
(check-sat)
(get-model)
