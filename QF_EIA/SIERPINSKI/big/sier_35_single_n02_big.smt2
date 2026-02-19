(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (* 4 (exp 2 (+ 0 (* 2 x)))) (* (- 10) x)) 25) 0))
(check-sat)
(get-model)
