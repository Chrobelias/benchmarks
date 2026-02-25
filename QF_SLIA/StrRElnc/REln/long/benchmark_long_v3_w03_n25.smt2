(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.++ (re.union (re.+ (str.to_re "98")) (str.to_re "556")) (re.+ (str.to_re "23")))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "551") (str.to_re "29")) (re.* (str.to_re "25")))))
(assert (str.in_re z (re.* (re.union (str.to_re "54") (re.union (str.to_re "792") (str.to_re "6"))))))

(assert (> (+ (- (str.len x)) (* (- 2) (str.len y)) (* 5 (str.to_int x))) 0))
(assert (<= (+ (* 4 (str.to_int x)) (* 9 (str.to_int y)) (* 10 (str.to_int z))) 65))

(check-sat)