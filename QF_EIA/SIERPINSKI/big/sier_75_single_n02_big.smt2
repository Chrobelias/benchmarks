(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 3 x) (* (- 9) (exp 2 (+ 0 (* 9 x)))) (* (- 2) x)) 74) 39))
(check-sat)
(get-model)
