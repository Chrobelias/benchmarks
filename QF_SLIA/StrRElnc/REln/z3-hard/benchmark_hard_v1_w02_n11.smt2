(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "285") (re.union (str.to_re "687") (re.+ (re.range "7" "9"))))))

(assert (< (* (- 6) (str.len x)) 6))
(assert (< (* 10 (str.to_int x)) 44))

(check-sat)