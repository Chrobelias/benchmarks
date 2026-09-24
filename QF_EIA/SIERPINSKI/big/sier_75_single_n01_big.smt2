(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 5 x) (* 4 (exp 2 (+ 8 (* 0 x)))) (* 8 x)) 73) 37))
(check-sat)
(get-model)
