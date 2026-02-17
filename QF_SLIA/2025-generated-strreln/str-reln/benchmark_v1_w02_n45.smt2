(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "99") (re.+ (str.to_re "53")))))

(assert (<= (* 5 (str.to_int x)) 23))
(assert (<= (- (str.len x)) 10))

(check-sat)