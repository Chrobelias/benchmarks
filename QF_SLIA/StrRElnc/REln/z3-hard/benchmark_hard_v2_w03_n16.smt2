(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.+ (str.to_re "383")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "54") (re.union (str.to_re "50") (str.to_re "608"))))))

(assert (<= (+ (* (- 4) (str.len x)) (* 6 (str.len y))) 34))
(assert (<= (+ (* (- 8) (str.len x)) (* 7 (str.to_int x))) 67))

(check-sat)