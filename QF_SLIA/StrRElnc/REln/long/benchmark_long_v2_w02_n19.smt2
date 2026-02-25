(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.+ (str.to_re "54"))))
(assert (str.in_re x (re.* (re.+ (re.++ (str.to_re "342") (re.+ (str.to_re "30")))))))

(assert (>= (+ (- (str.len y)) (* 3 (str.to_int y))) 61))

(check-sat)