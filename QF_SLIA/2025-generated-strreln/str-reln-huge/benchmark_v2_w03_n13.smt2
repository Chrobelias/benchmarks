(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.union (re.union (str.to_re "154") (str.to_re "513")) (re.* (str.to_re "0")))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "795") (re.+ (str.to_re "3"))) (re.+ (str.to_re "262")))))

(assert (> (+ (* 5 (str.len y)) (* 2 (str.to_int x)) (- (str.to_int y))) 1))
(assert (<= (+ (* 3 (str.to_int x)) (* 7 (str.to_int y))) 62))

(check-sat)