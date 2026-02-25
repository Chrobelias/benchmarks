(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "37") (re.* (re.union (str.to_re "296") (str.to_re "8"))))))

(assert (< (* 3 (str.to_int x)) 14))
(assert (<= (* 9 (str.len x)) 13))

(check-sat)