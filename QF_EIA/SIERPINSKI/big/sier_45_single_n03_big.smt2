(set-logic ALL)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ (* 10 x) (* (- 3) x)) 39) 30))
(check-sat)
(get-model)
