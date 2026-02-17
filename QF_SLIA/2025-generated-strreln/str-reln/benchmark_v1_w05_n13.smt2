(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "95") (str.to_re "84")) (re.+ (str.to_re "92")))))

(assert (<= (+ (- (str.len x)) (* (- 10) (str.to_int x))) 26))
(assert (<= (* 9 (str.to_int x)) 24))
(assert (<= (+ (* (- 7) (str.len x)) (* 3 (str.to_int x))) 23))

(check-sat)