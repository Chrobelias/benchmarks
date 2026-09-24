(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 8 x) (* 3 (exp 2 (+ 0 (* 3 x))))) 46) 34))
(check-sat)
(get-model)
