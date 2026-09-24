(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 2 x) (* (- 5) (exp 2 (+ 0 (* 2 x)))) (* 3 x)) 78) 56))
(check-sat)
(get-model)
