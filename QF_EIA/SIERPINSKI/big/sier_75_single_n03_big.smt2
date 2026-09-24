(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (* (- 7) (exp 2 (+ 0 (* 6 x)))) (* 4 x)) 71) 5))
(check-sat)
(get-model)
