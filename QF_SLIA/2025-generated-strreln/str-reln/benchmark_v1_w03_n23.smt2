(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "5")) (str.to_re "947"))))

(assert (< (- (str.len x)) 73))
(assert (<= (+ (* (- 8) (str.len x)) (* 2 (str.to_int x))) 21))

(check-sat)