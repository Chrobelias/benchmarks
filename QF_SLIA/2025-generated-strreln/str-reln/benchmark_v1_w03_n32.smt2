(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "382") (re.++ (re.* (str.to_re "238")) (str.to_re "39")))))

(assert (<= (+ (* (- 5) (str.len x)) (* 6 (str.to_int x))) 11))
(assert (<= (* 10 (str.to_int x)) 16))

(check-sat)