(set-logic QF_EIA)

(declare-const x Int)

(assert (>= x 1000))
(assert (= (mod (+ x (- (** 2 (+ 10 (* 0 x)))) (** 2 (** 2 (+ 0 (* 7 x))))) 48) 34))
(check-sat)
(get-model)
