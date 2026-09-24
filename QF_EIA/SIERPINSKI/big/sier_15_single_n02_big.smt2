(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 5 x) (* (- 10) (exp 2 (+ 8 (* 0 x)))) (* 9 x)) 11) 8))
(check-sat)
(get-model)
