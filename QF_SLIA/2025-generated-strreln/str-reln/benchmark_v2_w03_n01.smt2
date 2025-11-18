(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.* (str.to_re "89")))))
(assert (str.in_re y (re.union (re.++ (re.+ (str.to_re "14")) (str.to_re "783")) (re.+ (str.to_re "619")))))

(assert (>= (+ (* 7 (str.len x)) (* (- 3) (str.to_int x)) (* (- 5) (str.to_int y))) 47))
(assert (<= (+ (* (- 9) (str.len x)) (* (- 2) (str.len y))) 16))

(check-sat)