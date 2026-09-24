(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 10 x) (* 6 (exp 2 (+ 8 (* 8 x))))) 32) 29))
(check-sat)
(get-model)
