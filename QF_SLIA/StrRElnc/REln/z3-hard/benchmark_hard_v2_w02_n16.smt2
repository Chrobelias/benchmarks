(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "289") (re.* (str.to_re "86"))) (str.to_re "42"))))
(assert (str.in_re y (re.union (re.* (str.to_re "36")) (re.union (str.to_re "57") (str.to_re "1")))))

(assert (> (+ (* 10 (str.len y)) (- (str.to_int y))) 99))

(check-sat)