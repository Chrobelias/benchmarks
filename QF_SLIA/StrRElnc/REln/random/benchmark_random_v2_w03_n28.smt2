(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.union (str.to_re "136") (str.to_re "347")))))
(assert (str.in_re x (re.* (str.to_re "27"))))

(assert (> (+ (* 2 (str.to_int x)) (* 2 (str.to_int y))) 61))
(assert (>= (+ (* (- 4) (str.len x)) (* 8 (str.to_int y))) 11))

(check-sat)