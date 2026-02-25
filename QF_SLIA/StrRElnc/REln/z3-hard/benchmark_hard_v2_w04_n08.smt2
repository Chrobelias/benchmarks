(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.+ (re.* (str.to_re "710"))) (str.to_re "732"))))
(assert (str.in_re y (re.* (re.union (str.to_re "70") (re.union (re.+ (str.to_re "641")) (str.to_re "183"))))))

(assert (>= (+ (- (str.len x)) (* 4 (str.len y))) 87))
(assert (>= (+ (* 6 (str.len y)) (* 6 (str.to_int x))) 69))
(assert (< (str.to_int x) 48))

(check-sat)