(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.++ (str.to_re "85") (str.to_re "616"))))))

(assert (<= (+ (str.len x) (* 9 (str.to_int x))) 86))

(check-sat)