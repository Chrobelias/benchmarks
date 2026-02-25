(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (str.to_re "52") (re.* (str.to_re "31")))))
(assert (str.in_re x (re.+ (str.to_re "73"))))

(assert (<= (+ (- (str.to_int x)) (* 6 (str.to_int y))) 4))
(assert (= (+ (* 7 (str.len x)) (* (- 9) (str.len y))) 5))

(check-sat)