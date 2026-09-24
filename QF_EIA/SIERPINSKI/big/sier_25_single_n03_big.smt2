(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 7 x) (* (- 4) (exp 2 (+ 0 (* 5 x)))) (* (- 3) x)) 19) 12))
(check-sat)
(get-model)
