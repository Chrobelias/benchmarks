(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (re.+ (str.to_re "898")) (str.to_re "61")) (str.to_re "751"))))

(assert (< (- (str.len x)) 69))
(assert (<= (* 10 (str.to_int x)) 6))

(check-sat)