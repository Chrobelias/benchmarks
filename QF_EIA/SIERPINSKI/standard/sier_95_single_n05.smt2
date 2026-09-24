(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (exp 2 (+ 0 (* 4 x))) (* (- 6) x)) 92) 80))
(check-sat)
(get-model)
