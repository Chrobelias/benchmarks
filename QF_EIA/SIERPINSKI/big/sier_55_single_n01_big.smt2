(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 9 x) (* 3 (exp 2 (+ 0 (* 10 x)))) (* (- 4) x)) 47) 40))
(check-sat)
(get-model)
