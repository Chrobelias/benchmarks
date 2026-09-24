(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 3 x) (* (- 9) (exp 2 (+ 4 (* 0 x))))) 49) 48))
(check-sat)
(get-model)
