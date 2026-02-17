(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.+ (str.to_re "12"))))))

(assert (<= (+ (- (str.len x)) (* (- 7) (str.to_int x))) 11))
(assert (= (+ (* (- 2) (str.len x)) (* 9 (str.to_int x))) 62))

(check-sat)