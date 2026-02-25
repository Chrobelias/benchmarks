(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "615") (str.to_re "29")))))
(assert (str.in_re y (re.* (re.union (str.to_re "1") (re.++ (str.to_re "53") (str.to_re "576"))))))

(assert (= (+ (* 5 (str.to_int x)) (* 9 (str.to_int y))) 91))
(assert (>= (+ (* 4 (str.len x)) (- (str.len y))) 35))

(check-sat)