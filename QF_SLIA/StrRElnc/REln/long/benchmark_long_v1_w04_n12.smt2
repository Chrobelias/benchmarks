(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "46") (re.+ (re.range "4" "6")))))

(assert (> (* 7 (str.len x)) 98))
(assert (<= (* 10 (str.len x)) 27))
(assert (>= (* 3 (str.len x)) 36))
(assert (< (* 10 (str.to_int x)) 21))

(check-sat)