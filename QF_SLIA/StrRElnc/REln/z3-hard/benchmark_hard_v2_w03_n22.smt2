(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "66") (re.+ (str.to_re "917")))))
(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "66")) (str.to_re "646")) (str.to_re "346"))))

(assert (> (+ (* 3 (str.len y)) (* (- 3) (str.to_int x))) 25))
(assert (<= (+ (* 2 (str.len x)) (- (str.len y))) 93))

(check-sat)