(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "2") (re.range "7" "9"))))))

(assert (< (* 6 (str.to_int x)) 91))
(assert (>= (str.len x) 87))
(assert (>= (str.len x) 53))
(assert (< (* (- 6) (str.to_int x)) 93))

(check-sat)