(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (* 2 (exp 2 (+ 4 (* 0 x)))) (* 3 x)) 38) 3))
(check-sat)
(get-model)
