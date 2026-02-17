(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.union (str.to_re "91") (str.to_re "34"))) (str.to_re "1"))))

(assert (<= (+ (* (- 2) (str.len x)) (* 2 (str.to_int x))) 29))
(assert (<= (* 5 (str.to_int x)) 21))
(assert (>= (* 5 (str.to_int x)) 16))

(check-sat)