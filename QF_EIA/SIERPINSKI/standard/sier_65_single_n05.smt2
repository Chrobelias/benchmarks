(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 x) (* (- 7) (exp 2 (+ 0 (* 7 x)))) (* (- 5) x)) 58) 34))
(check-sat)
(get-model)
