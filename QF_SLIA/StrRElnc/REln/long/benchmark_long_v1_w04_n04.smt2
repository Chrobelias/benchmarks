(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (str.to_re "528"))))

(assert (= (* 10 (str.len x)) 21))
(assert (< (- (str.to_int x)) 77))
(assert (> (+ (* (- 7) (str.len x)) (* (- 9) (str.to_int x))) 52))

(check-sat)