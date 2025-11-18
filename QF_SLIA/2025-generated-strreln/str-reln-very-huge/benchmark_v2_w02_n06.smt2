(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.++ (re.++ (str.to_re "31") (re.* (str.to_re "38"))) (re.* (re.range "2" "5")))))
(assert (str.in_re y (re.union (re.* (str.to_re "55")) (str.to_re "301"))))

(assert (> (+ (* 6 (str.len x)) (- (str.len y))) 6))
(assert (<= (+ (* 8 (str.to_int x)) (* 5 (str.to_int y))) 77))

(check-sat)