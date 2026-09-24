(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 4 x) (* (- 3) (exp 2 (+ 0 (* 7 x)))) (* (- 4) x)) 60) 2))
(check-sat)
(get-model)
