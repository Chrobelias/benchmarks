(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "28")) (str.to_re "93"))))

(assert (= (str.len x) 62))
(assert (>= (* 4 (str.to_int x)) 8))
(assert (<= (- (str.to_int x)) 33))

(check-sat)