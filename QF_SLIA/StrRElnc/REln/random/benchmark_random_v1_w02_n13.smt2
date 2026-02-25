(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (re.range "2" "5") (re.* (str.to_re "54"))) (re.+ (str.to_re "84")))))

(assert (<= (* 8 (str.to_int x)) 55))
(assert (> (* 10 (str.len x)) 42))

(check-sat)