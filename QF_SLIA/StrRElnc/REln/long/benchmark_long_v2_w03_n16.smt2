(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.* (re.+ (re.* (re.+ (str.to_re "77")))))))
(assert (str.in_re x (re.* (re.++ (str.to_re "363") (re.++ (str.to_re "830") (str.to_re "458"))))))

(assert (> (+ (* 6 (str.to_int x)) (* 3 (str.to_int y))) 42))
(assert (>= (+ (- (str.len x)) (* 7 (str.len y))) 60))
(assert (< (+ (* (- 8) (str.len x)) (* (- 8) (str.len y))) 45))

(check-sat)