(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.+ (re.++ (str.to_re "123") (re.union (str.to_re "64") (str.to_re "84"))))))
(assert (str.in_re y (re.++ (str.to_re "263") (re.* (str.to_re "671")))))

(assert (<= (+ (- (str.len x)) (* (- 2) (str.len y)) (* 8 (str.to_int x))) 12))
(assert (= (+ (* 6 (str.to_int x)) (- (str.to_int y))) 37))
(assert (>= (+ (* 10 (str.to_int x)) (* (- 10) (str.to_int y))) 22))
(assert (<= (+ (* (- 9) (str.to_int x)) (* (- 9) (str.to_int y))) 46))

(check-sat)