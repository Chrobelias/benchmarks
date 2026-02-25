(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "4")) (str.to_re "31"))))
(assert (str.in_re y (re.union (re.++ (str.to_re "478") (re.union (str.to_re "13") (re.* (str.to_re "621")))) (str.to_re "2"))))

(assert (<= (+ (* 9 (str.to_int x)) (- (str.to_int y))) 50))
(assert (> (+ (* (- 5) (str.len x)) (* 10 (str.to_int y))) 17))

(check-sat)