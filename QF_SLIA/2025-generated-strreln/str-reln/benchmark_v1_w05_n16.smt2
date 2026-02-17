(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "5") (re.++ (str.to_re "3") (re.* (re.range "5" "8"))))))

(assert (< (+ (* (- 4) (str.len x)) (* 7 (str.to_int x))) 13))
(assert (<= (* 4 (str.to_int x)) 64))
(assert (<= (+ (- (str.len x)) (* 10 (str.to_int x))) 91))

(check-sat)