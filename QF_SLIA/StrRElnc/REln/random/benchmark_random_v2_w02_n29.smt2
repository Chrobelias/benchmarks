(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "244") (re.+ (str.to_re "0"))))))
(assert (str.in_re y (re.union (re.+ (str.to_re "38")) (re.range "7" "9"))))

(assert (>= (* (- 6) (str.to_int y)) 24))
(assert (<= (+ (* (- 4) (str.len x)) (* (- 10) (str.len y))) 69))

(check-sat)