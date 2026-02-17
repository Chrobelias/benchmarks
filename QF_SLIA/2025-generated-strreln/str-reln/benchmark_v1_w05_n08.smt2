(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "79")) (re.* (str.to_re "484")))))

(assert (<= (* (- 7) (str.to_int x)) 25))
(assert (<= (+ (- (str.len x)) (* 7 (str.to_int x))) 18))
(assert (< (* (- 9) (str.to_int x)) 93))
(assert (<= (* (- 10) (str.to_int x)) 84))

(check-sat)