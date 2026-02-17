(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.union (re.+ (str.to_re "22")) (str.to_re "20"))))))

(assert (> (str.len x) 57))
(assert (<= (* 4 (str.to_int x)) 60))

(check-sat)