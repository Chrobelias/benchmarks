(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* (- 5) x) (* (- 4) (exp 2 (+ 6 (* 0 x)))) (* (- 9) x)) 90) 47))
(check-sat)
(get-model)
