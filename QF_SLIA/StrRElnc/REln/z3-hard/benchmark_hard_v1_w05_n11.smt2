(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "767") (re.+ (str.to_re "289"))))))

(assert (<= (+ (- (str.len x)) (* 8 (str.to_int x))) 58))
(assert (>= (* 8 (str.len x)) 93))
(assert (> (* 5 (str.len x)) 6))
(assert (<= (* (- 4) (str.to_int x)) 63))

(check-sat)