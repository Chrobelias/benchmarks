(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "80") (re.union (str.to_re "57") (re.* (str.to_re "42"))))))

(assert (<= (* (- 8) (str.len x)) 5))
(assert (< (+ (* (- 5) (str.len x)) (* 7 (str.to_int x))) 36))
(assert (>= (* 8 (str.to_int x)) 61))

(check-sat)