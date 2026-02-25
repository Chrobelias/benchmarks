(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (re.union (str.to_re "54") (re.* (str.to_re "898"))) (str.to_re "169")))))
(assert (str.in_re y (re.+ (re.+ (re.++ (str.to_re "4") (str.to_re "301"))))))

(assert (= (+ (- (str.len x)) (* (- 8) (str.to_int x)) (* 6 (str.to_int y))) 17))

(check-sat)