(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "312") (re.union (re.+ (str.to_re "742")) (str.to_re "27"))) (str.to_re "3"))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "70") (str.to_re "552")) (re.* (str.to_re "797")))))

(assert (> (+ (- (str.len x)) (* 9 (str.to_int y))) 18))
(assert (<= (+ (* 3 (str.to_int x)) (* 2 (str.to_int y))) 42))

(check-sat)