(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "85") (str.to_re "516")))))

(assert (> (* 8 (str.to_int x)) 28))
(assert (< (* 6 (str.to_int x)) 41))
(assert (> (* 9 (str.len x)) 96))

(check-sat)