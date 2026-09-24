(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 2) x) (* (- 5) (exp 2 (+ 0 (* 3 x)))) (* 9 x)) 103) 20))
(check-sat)
(get-model)
