(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.++ (str.to_re "2") (re.+ (str.to_re "491"))) (str.to_re "37"))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "9") (re.union (re.* (str.to_re "74")) (str.to_re "1"))))))

(assert (>= (+ (- (str.len x)) (* 8 (str.len y)) (* (- 2) (str.to_int y))) 62))
(assert (< (+ (* 4 (str.to_int x)) (* 6 (str.to_int y))) 80))

(check-sat)