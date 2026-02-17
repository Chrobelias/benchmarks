(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "161") (re.* (re.range "6" "8")))))

(assert (< (+ (- (str.len x)) (str.to_int x)) 2))
(assert (<= (* (- 3) (str.to_int x)) 5))

(check-sat)