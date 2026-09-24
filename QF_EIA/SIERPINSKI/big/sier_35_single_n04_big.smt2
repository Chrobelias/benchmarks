(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (- x) (* 8 (exp 2 (+ 0 (* 5 x))))) 25) 0))
(check-sat)
(get-model)
