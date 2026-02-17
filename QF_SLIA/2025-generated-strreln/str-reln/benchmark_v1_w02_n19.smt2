(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "99") (str.to_re "190")) (re.+ (str.to_re "887")))))

(assert (<= (* 9 (str.to_int x)) 60))
(assert (>= (* 8 (str.len x)) 31))

(check-sat)