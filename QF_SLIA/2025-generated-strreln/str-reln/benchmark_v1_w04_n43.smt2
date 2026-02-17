(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "3")) (re.++ (re.+ (str.to_re "559")) (str.to_re "276")))))

(assert (<= (* (- 4) (str.len x)) 65))
(assert (<= (+ (- (str.len x)) (* 5 (str.to_int x))) 29))
(assert (<= (* 7 (str.to_int x)) 32))

(check-sat)