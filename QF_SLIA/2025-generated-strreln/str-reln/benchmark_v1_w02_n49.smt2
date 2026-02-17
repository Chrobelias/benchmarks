(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "38"))))

(assert (<= (+ (- (str.len x)) (* 4 (str.to_int x))) 23))

(check-sat)