(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.+ (re.++ (re.* (str.to_re "0")) (re.* (str.to_re "148"))))))
(assert (str.in_re y (re.+ (str.to_re "47"))))

(assert (>= (+ (* 8 (str.len x)) (* 10 (str.to_int y))) 55))
(assert (>= (+ (* (- 5) (str.to_int x)) (- (str.to_int y))) 26))

(check-sat)