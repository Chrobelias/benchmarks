(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.union (str.to_re "3") (str.to_re "5"))))))

(assert (>= (+ (* 10 (str.len x)) (- (str.to_int x))) 27))

(check-sat)