(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "1"))))

(assert (= (* 2 (str.to_int x)) 76))
(assert (>= (* 4 (str.len x)) 70))
(assert (< (- (str.to_int x)) 90))

(check-sat)