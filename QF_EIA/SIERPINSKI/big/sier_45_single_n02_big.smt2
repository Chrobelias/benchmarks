(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 4 x) (* 2 (exp 2 (+ 0 (* 10 x)))) (* (- 10) x)) 44) 4))
(check-sat)
(get-model)
