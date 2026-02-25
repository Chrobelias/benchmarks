(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.++ (str.to_re "10") (re.union (re.* (str.to_re "611")) (str.to_re "3"))) (str.to_re "65"))))

(assert (<= (+ (* 8 (str.len x)) (* (- 7) (str.to_int x))) 11))
(assert (>= (* (- 9) (str.to_int x)) 49))

(check-sat)