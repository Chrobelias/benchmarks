(set-logic ALL)

(declare-const x Int)

(assert (>= x 0))
(assert (= (mod (+ (* 10 x) (* 4 (exp 2 (+ 1 (* 0 x)))) (* (- 3) x)) 99) 37))
(check-sat)
(get-model)
