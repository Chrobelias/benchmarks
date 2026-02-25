(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "14" x)))

(assert (str.in_re x (re.++ (re.+ (str.to_re "53")) (re.union (str.to_re "2") (str.to_re "421")))))
(assert (str.in_re y (re.union (re.* (str.to_re "34")) (re.union (re.+ (re.range "0" "5")) (str.to_re "89")))))

(assert (= (+ (* (- 8) (str.len y)) (- (str.to_int x))) 14))

(check-sat)