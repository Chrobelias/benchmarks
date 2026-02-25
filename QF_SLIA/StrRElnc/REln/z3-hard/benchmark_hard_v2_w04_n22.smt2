(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (str.to_re "454") (re.+ (re.* (str.to_re "8"))))))
(assert (str.in_re y (re.union (re.* (re.+ (str.to_re "3"))) (re.* (str.to_re "41")))))

(assert (< (+ (* (- 3) (str.to_int x)) (* (- 5) (str.to_int y))) 42))
(assert (= (+ (* 5 (str.len x)) (* (- 2) (str.to_int x))) 55))
(assert (<= (+ (- (str.to_int x)) (* (- 9) (str.to_int y))) 100))

(check-sat)