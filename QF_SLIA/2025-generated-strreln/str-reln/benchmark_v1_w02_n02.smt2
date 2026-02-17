(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "74") (re.+ (str.to_re "164")))))))

(assert (< (* 9 (str.to_int x)) 73))
(assert (> (* 8 (str.len x)) 6))

(check-sat)