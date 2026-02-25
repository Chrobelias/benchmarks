(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "47")) (re.+ (str.to_re "40"))))))

(assert (> (* (- 6) (str.to_int x)) 85))
(assert (<= (* (- 6) (str.len x)) 62))
(assert (= (* (- 9) (str.to_int x)) 69))

(check-sat)