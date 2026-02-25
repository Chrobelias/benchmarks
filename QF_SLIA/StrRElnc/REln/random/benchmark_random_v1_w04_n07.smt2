(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "27"))))

(assert (<= (- (str.to_int x)) 93))
(assert (< (str.len x) 86))
(assert (>= (+ (* 7 (str.len x)) (* (- 10) (str.to_int x))) 62))

(check-sat)