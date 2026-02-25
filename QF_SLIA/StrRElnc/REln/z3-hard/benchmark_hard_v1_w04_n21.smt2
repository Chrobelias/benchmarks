(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.++ (str.to_re "759") (str.to_re "58")) (str.to_re "12")))))

(assert (= (+ (* 8 (str.len x)) (str.to_int x)) 88))
(assert (= (+ (* 7 (str.len x)) (* (- 5) (str.to_int x))) 77))

(check-sat)