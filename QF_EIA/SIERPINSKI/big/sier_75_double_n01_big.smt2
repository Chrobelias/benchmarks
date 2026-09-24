(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 3) x) (* 8 (exp 2 (+ 0 (* 8 x)))) (* 9 (exp 2 (exp 2 (+ 7 (* 10 x)))))) 68) 62))
(check-sat)
(get-model)
