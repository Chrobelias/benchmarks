(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "164") (re.* (str.to_re "3"))) (str.to_re "698"))))
(assert (str.in_re y (re.+ (re.+ (re.+ (str.to_re "133"))))))

(assert (<= (+ (* (- 9) (str.len y)) (* 6 (str.to_int y))) 61))

(check-sat)