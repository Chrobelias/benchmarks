(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.+ (str.to_re "24"))))))

(assert (>= (+ (* 3 (str.len x)) (- (str.to_int x))) 94))
(assert (>= (str.to_int x) 41))

(check-sat)