(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.* (re.union (str.to_re "710") (re.* (str.to_re "59")))) (str.to_re "5"))))

(assert (<= (* 3 (str.len x)) 21))
(assert (<= (* (- 5) (str.to_int x)) 35))

(check-sat)