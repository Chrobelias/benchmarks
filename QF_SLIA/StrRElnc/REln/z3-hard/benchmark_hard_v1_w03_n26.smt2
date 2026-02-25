(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "93") (str.to_re "241")) (re.+ (str.to_re "294")))))

(assert (< (+ (- (str.len x)) (* 9 (str.to_int x))) 85))
(assert (<= (* (- 6) (str.to_int x)) 38))

(check-sat)