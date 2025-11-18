(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (re.* (str.to_re "2")))))
(assert (str.in_re y (re.* (re.++ (re.++ (str.to_re "390") (re.+ (str.to_re "765"))) (str.to_re "319")))))

(assert (< (+ (* (- 8) (str.to_int x)) (* 10 (str.to_int y))) 10))
(assert (>= (+ (* (- 3) (str.len x)) (* 9 (str.len y))) 11))
(assert (<= (+ (- (str.len x)) (* 7 (str.len y)) (* (- 3) (str.to_int x))) 100))
(assert (<= (+ (* (- 7) (str.to_int x)) (* (- 3) (str.to_int y))) 60))
(assert (< (+ (* 9 (str.to_int x)) (* (- 4) (str.to_int y))) 61))

(check-sat)