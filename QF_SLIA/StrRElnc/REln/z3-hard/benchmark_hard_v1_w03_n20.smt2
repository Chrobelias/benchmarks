(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "21") (re.union (re.+ (re.* (str.to_re "59"))) (str.to_re "77")))))

(assert (<= (* 9 (str.to_int x)) 91))
(assert (>= (+ (* 6 (str.len x)) (* 3 (str.to_int x))) 71))

(check-sat)