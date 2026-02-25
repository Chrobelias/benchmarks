(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (re.range "3" "5") (re.union (str.to_re "31") (str.to_re "75"))))))

(assert (< (* 6 (str.to_int x)) 65))
(assert (>= (* 2 (str.len x)) 31))
(assert (= (* 5 (str.to_int x)) 92))
(assert (>= (* 5 (str.to_int x)) 36))
(assert (= (* (- 10) (str.to_int x)) 74))

(check-sat)