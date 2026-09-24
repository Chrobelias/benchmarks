(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 9 x) (* 8 (exp 2 (+ 1 (* 0 x)))) (* (- 4) x)) 97) 3))
(check-sat)
(get-model)
