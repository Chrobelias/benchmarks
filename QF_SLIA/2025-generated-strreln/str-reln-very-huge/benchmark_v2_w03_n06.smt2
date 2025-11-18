(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.union (re.range "1" "8") (re.+ (re.+ (re.+ (str.to_re "516")))))))
(assert (str.in_re y (re.union (str.to_re "7") (re.+ (str.to_re "367")))))

(assert (= (+ (* (- 5) (str.len x)) (* 9 (str.len y))) 26))
(assert (< (+ (* 7 (str.len y)) (- (str.to_int y))) 91))

(check-sat)