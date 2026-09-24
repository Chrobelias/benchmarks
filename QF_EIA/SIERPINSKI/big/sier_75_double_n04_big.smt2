(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 8) x) (* 3 (exp 2 (+ 0 (* 4 x)))) (* (- 8) (exp 2 (exp 2 (+ 0 (* 2 x)))))) 68) 61))
(check-sat)
(get-model)
