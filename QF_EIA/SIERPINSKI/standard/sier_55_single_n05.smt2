(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 5 x) (* (- 10) (exp 2 (+ 4 (* 0 x)))) (* 5 x)) 54) 54))
(check-sat)
(get-model)
