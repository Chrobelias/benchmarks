(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.++ (re.range "5" "9") (re.++ (re.+ (str.to_re "63")) (str.to_re "1"))))))

(assert (> (+ (* (- 9) (str.len x)) (* 5 (str.to_int x))) 49))
(assert (<= (- (str.len x)) 38))

(check-sat)