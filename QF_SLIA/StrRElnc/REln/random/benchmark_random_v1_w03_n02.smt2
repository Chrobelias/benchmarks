(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.* (re.+ (re.range "6" "8")))))))

(assert (>= (* (- 2) (str.len x)) 60))
(assert (> (* 8 (str.to_int x)) 91))
(assert (<= (* (- 8) (str.to_int x)) 97))

(check-sat)