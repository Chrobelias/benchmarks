(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.+ (re.* (str.to_re "68"))) (re.range "3" "9")))))

(assert (<= (* 8 (str.len x)) 91))
(assert (> (* 10 (str.to_int x)) 12))

(check-sat)