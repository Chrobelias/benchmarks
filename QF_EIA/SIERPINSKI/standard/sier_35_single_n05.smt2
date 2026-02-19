(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 8 x) (* (- 8) (exp 2 (+ 0 (* 2 x)))) (* (- 8) x)) 31) 21))
(check-sat)
(get-model)
