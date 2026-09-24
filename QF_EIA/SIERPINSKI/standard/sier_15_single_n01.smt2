(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* (- 6) x) (* (- 3) (exp 2 (+ 0 (* 10 x))))) 13) 1))
(check-sat)
(get-model)
