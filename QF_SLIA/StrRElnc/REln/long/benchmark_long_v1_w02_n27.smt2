(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "81") (re.union (re.* (re.+ (re.range "2" "9"))) (str.to_re "71")))))

(assert (> (* (- 7) (str.len x)) 57))
(assert (<= (* 6 (str.to_int x)) 1))

(check-sat)