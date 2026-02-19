(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 10) x) (* 10 (exp 2 (+ 10 (* 0 x)))) (* (- 8) x)) 51) 31))
(check-sat)
(get-model)
