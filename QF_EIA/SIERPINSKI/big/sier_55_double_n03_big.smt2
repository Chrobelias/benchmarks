(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ x (- (exp 2 (+ 10 (* 0 x)))) (exp 2 (exp 2 (+ 0 (* 7 x))))) 48) 34))
(check-sat)
(get-model)
