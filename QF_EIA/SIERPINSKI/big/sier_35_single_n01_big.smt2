(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 4 (exp 2 (+ 3 (* 7 x)))) (* (- 5) x)) 32) 12))
(check-sat)
(get-model)
