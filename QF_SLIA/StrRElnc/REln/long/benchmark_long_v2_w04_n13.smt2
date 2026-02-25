(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "11")) (str.to_re "16")))))
(assert (str.in_re y (re.union (re.+ (str.to_re "550")) (re.* (str.to_re "81")))))

(assert (= (+ (* (- 2) (str.len x)) (* (- 7) (str.len y))) 13))
(assert (> (+ (* (- 7) (str.len x)) (* 9 (str.len y))) 89))
(assert (<= (+ (* (- 10) (str.to_int x)) (- (str.to_int y))) 4))
(assert (> (+ (* 2 (str.to_int x)) (* 4 (str.to_int y))) 68))

(check-sat)