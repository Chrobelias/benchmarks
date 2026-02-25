(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (re.range "3" "7") (re.* (re.range "1" "6"))))))

(assert (>= (str.len x) 2))
(assert (<= (* (- 2) (str.to_int x)) 6))
(assert (<= (* 9 (str.to_int x)) 25))
(assert (> (str.len x) 77))
(assert (< (- (str.to_int x)) 31))

(check-sat)