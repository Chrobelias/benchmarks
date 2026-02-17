(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "201")) (re.+ (str.to_re "6"))) (str.to_re "33"))))

(assert (> (+ (* 10 (str.len x)) (- (str.to_int x))) 46))
(assert (<= (* (- 6) (str.to_int x)) 97))

(check-sat)