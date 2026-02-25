(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.union (re.+ (str.to_re "648")) (str.to_re "46")))))
(assert (str.in_re x (re.+ (re.+ (str.to_re "55")))))

(assert (< (+ (* 2 (str.len x)) (* (- 2) (str.len y)) (* 3 (str.to_int y))) 21))
(assert (< (+ (* (- 10) (str.to_int x)) (* 6 (str.to_int y))) 67))
(assert (<= (+ (* 8 (str.to_int x)) (* 10 (str.to_int y))) 22))

(check-sat)