(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (* (- 9) (exp 2 (exp 2 (+ 5 (* 0 x))))) 30) 13))
(check-sat)
(get-model)
