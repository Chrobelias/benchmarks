(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "86") (re.* (re.union (str.to_re "307") (str.to_re "50"))))))
(assert (str.in_re x (re.union (str.to_re "841") (re.+ (str.to_re "97")))))

(assert (< (+ (* 9 (str.len y)) (* (- 5) (str.to_int x))) 90))
(assert (<= (+ (* 6 (str.to_int x)) (* 10 (str.to_int y))) 44))

(check-sat)