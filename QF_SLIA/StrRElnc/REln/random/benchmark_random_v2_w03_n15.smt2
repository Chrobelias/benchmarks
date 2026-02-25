(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "50") (str.to_re "64")))))
(assert (str.in_re y (re.union (re.* (str.to_re "51")) (re.+ (str.to_re "192")))))

(assert (> (+ (* (- 3) (str.len y)) (* 6 (str.to_int x)) (* 9 (str.to_int y))) 80))
(assert (< (+ (* (- 4) (str.to_int x)) (- (str.to_int y))) 85))

(check-sat)