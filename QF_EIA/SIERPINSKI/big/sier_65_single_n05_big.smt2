(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 3 x) (* (- 9) (exp 2 (+ 0 (* 3 x)))) (* 2 x)) 62) 62))
(check-sat)
(get-model)
