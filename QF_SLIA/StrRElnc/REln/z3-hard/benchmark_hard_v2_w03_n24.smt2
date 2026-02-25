(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.* (re.range "3" "7")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "603")) (re.union (str.to_re "180") (re.* (str.to_re "36"))))))

(assert (< (+ (* (- 5) (str.to_int x)) (* 9 (str.to_int y))) 80))
(assert (<= (+ (* (- 4) (str.len x)) (* 2 (str.to_int x))) 60))

(check-sat)