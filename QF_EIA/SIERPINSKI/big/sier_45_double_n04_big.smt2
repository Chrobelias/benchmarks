(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 7 (exp 2 (+ 0 (* 6 x)))) (* 5 (exp 2 (exp 2 (+ 3 (* 0 x)))))) 38) 30))
(check-sat)
(get-model)
