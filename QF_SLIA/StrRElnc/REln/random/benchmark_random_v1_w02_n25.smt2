(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "47") (re.+ (str.to_re "43")))))

(assert (<= (* 9 (str.len x)) 62))
(assert (> (* 8 (str.to_int x)) 32))

(check-sat)