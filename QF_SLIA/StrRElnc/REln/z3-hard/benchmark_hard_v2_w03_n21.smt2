(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.union (str.to_re "60") (str.to_re "930")) (re.* (str.to_re "188")))))
(assert (str.in_re x (re.union (str.to_re "721") (re.+ (str.to_re "6")))))

(assert (>= (+ (* 3 (str.len x)) (* (- 5) (str.to_int x))) 5))
(assert (>= (+ (- (str.len x)) (* 4 (str.len y))) 1))

(check-sat)