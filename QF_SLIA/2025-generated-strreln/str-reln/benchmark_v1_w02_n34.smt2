(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "2"))))

(assert (<= (str.to_int x) 65))
(assert (> (* 7 (str.len x)) 32))

(check-sat)