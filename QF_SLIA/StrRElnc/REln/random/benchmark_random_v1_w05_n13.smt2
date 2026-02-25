(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "93")) (re.+ (str.to_re "756"))))))

(assert (<= (* 6 (str.to_int x)) 16))
(assert (> (* (- 8) (str.to_int x)) 56))
(assert (>= (* (- 6) (str.len x)) 62))
(assert (= (* (- 9) (str.len x)) 36))
(assert (= (- (str.len x)) 71))

(check-sat)