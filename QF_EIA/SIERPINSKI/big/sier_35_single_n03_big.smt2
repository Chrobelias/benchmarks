(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 3) x) (* (- 8) (exp 2 (+ 0 (* 6 x))))) 31) 8))
(check-sat)
(get-model)
