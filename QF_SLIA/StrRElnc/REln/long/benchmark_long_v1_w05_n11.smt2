(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.++ (str.to_re "5") (str.to_re "218")))))

(assert (< (- (str.len x)) 25))
(assert (= (* 8 (str.len x)) 33))
(assert (<= (* (- 3) (str.len x)) 67))
(assert (<= (+ (* (- 7) (str.len x)) (* 4 (str.to_int x))) 86))

(check-sat)