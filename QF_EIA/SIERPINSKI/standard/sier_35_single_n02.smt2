(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 9) x) (* (- 3) (exp 2 (+ 0 (* 6 x)))) (* (- 3) x)) 27) 21))
(check-sat)
(get-model)
