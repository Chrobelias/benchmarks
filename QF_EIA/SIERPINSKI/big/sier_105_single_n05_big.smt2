(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 2 x) (* 9 (exp 2 (+ 0 (* 2 x)))) (* (- 8) x)) 101) 12))
(check-sat)
(get-model)
