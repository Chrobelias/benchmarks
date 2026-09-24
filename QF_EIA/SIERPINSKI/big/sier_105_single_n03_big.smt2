(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 3 x) (* (- 10) (exp 2 (+ 7 (* 0 x)))) (* 8 x)) 98) 55))
(check-sat)
(get-model)
