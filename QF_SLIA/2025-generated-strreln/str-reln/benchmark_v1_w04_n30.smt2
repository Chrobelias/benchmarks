(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "12") (str.to_re "20"))))))

(assert (<= (+ (* (- 2) (str.len x)) (* 5 (str.to_int x))) 7))
(assert (<= (+ (- (str.len x)) (* (- 7) (str.to_int x))) 73))

(check-sat)