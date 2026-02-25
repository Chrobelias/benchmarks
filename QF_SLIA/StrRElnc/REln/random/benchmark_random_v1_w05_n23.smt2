(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "72") (re.union (str.to_re "538") (str.to_re "663"))))))

(assert (> (* (- 10) (str.to_int x)) 49))
(assert (> (* (- 3) (str.to_int x)) 15))
(assert (= (+ (* 8 (str.len x)) (- (str.to_int x))) 32))
(assert (= (* 6 (str.len x)) 71))

(check-sat)