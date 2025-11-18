(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (re.* (str.to_re "6")))))
(assert (str.in_re y (re.+ (re.++ (re.union (str.to_re "5") (re.* (str.to_re "48"))) (str.to_re "3")))))

(assert (> (+ (* 4 (str.len x)) (* (- 9) (str.len y))) 49))
(assert (= (+ (- (str.to_int x)) (* 9 (str.to_int y))) 52))

(check-sat)