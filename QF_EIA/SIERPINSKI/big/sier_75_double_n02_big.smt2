(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 3) x) (* 7 (exp 2 (+ 0 (* 5 x)))) (* (- 5) (exp 2 (exp 2 (+ 6 (* 9 x)))))) 68) 30))
(check-sat)
(get-model)
