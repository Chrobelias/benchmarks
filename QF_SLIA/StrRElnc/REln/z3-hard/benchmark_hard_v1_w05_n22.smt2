(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "4") (re.union (str.to_re "70") (re.* (str.to_re "87")))) (str.to_re "52"))))

(assert (>= (* 3 (str.len x)) 38))
(assert (< (* 4 (str.to_int x)) 73))
(assert (<= (+ (* (- 6) (str.len x)) (* (- 2) (str.to_int x))) 87))
(assert (<= (* 6 (str.to_int x)) 5))

(check-sat)