(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.* (re.+ (re.* (str.to_re "890")))))))
(assert (str.in_re y (re.union (str.to_re "955") (re.* (re.* (re.+ (str.to_re "94")))))))

(assert (<= (+ (* (- 10) (str.to_int x)) (- (str.to_int y))) 72))
(assert (<= (* (- 7) (str.len x)) 36))
(assert (<= (+ (* (- 8) (str.len x)) (* 7 (str.to_int y))) 34))
(assert (>= (+ (* 2 (str.len x)) (* (- 8) (str.len y))) 60))

(check-sat)