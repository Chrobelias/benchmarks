(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 7 x) (* (- 10) (exp 2 (+ 4 (* 0 x)))) (* 6 (exp 2 (exp 2 (+ 0 (* 3 x)))))) 56) 43))
(check-sat)
(get-model)
