(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "27") (re.* (re.+ (str.to_re "8")))))))

(assert (< (- (str.len x)) 61))
(assert (< (+ (* (- 8) (str.len x)) (* 5 (str.to_int x))) 40))
(assert (> (+ (* (- 7) (str.len x)) (* 9 (str.to_int x))) 75))

(check-sat)