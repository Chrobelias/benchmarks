(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 5 x) (* 7 (exp 2 (+ 2 (* 0 x)))) (* (- 8) x)) 35) 32))
(check-sat)
(get-model)
