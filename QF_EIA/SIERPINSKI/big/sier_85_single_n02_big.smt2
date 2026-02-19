(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 6 x) (* (- 5) (exp 2 (+ 0 (* 10 x)))) (* (- 4) x)) 75) 25))
(check-sat)
(get-model)
