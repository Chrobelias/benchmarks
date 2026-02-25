(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "861") (re.+ (re.+ (str.to_re "378"))))))

(assert (<= (* (- 2) (str.len x)) 6))
(assert (= (+ (- (str.len x)) (* 4 (str.to_int x))) 10))

(check-sat)