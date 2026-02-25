(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (str.to_re "26") (re.++ (re.* (str.to_re "112")) (str.to_re "96")))))
(assert (str.in_re y (re.+ (re.++ (re.+ (str.to_re "821")) (re.+ (str.to_re "42"))))))

(assert (>= (+ (* (- 6) (str.to_int x)) (* (- 3) (str.to_int y))) 3))
(assert (<= (+ (* (- 10) (str.len x)) (* 8 (str.to_int y))) 98))

(check-sat)