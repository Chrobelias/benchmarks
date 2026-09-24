(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 7) x) (* (- 6) (exp 2 (+ 0 (* 7 x)))) (* 5 x)) 31) 21))
(check-sat)
(get-model)
