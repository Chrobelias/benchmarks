(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.union (re.+ (re.* (str.to_re "53"))) (str.to_re "918"))))
(assert (str.in_re x (re.* (re.union (str.to_re "82") (re.union (re.+ (str.to_re "79")) (str.to_re "321"))))))

(assert (>= (+ (* (- 9) (str.len x)) (str.len y)) 39))
(assert (= (+ (* (- 5) (str.len y)) (- (str.to_int x))) 94))

(check-sat)