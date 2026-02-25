(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.+ (str.to_re "50")))))
(assert (str.in_re x (re.++ (re.* (re.* (str.to_re "609"))) (re.* (str.to_re "22")))))

(assert (= (+ (- (str.len x)) (* 9 (str.to_int y))) 58))

(check-sat)