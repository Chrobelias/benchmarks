(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 8 x) (* 3 (exp 2 (+ 0 (* 7 x)))) (* (- 2) x)) 22) 0))
(check-sat)
(get-model)
