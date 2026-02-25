(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (str.to_re "435"))))
(assert (str.in_re y (re.+ (re.+ (re.* (re.+ (str.to_re "4")))))))

(assert (<= (+ (* 7 (str.len x)) (* (- 9) (str.len y))) 90))
(assert (= (+ (* (- 3) (str.len x)) (* 5 (str.len y)) (- (str.to_int y))) 56))

(check-sat)