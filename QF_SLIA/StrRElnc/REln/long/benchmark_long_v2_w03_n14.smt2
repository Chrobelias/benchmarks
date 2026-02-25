(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.* (re.* (str.to_re "76"))))))
(assert (str.in_re y (re.union (str.to_re "7") (re.+ (str.to_re "204")))))

(assert (<= (+ (- (str.len x)) (* 7 (str.to_int x))) 11))
(assert (< (+ (* (- 6) (str.len x)) (* (- 2) (str.len y))) 84))

(check-sat)