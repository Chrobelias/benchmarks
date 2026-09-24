(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 9 x) (* (- 7) (exp 2 (+ 6 (* 0 x))))) 63) 50))
(check-sat)
(get-model)
