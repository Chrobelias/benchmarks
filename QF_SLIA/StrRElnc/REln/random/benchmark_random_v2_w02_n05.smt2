(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (str.to_re "1"))))
(assert (str.in_re y (re.union (re.range "7" "9") (re.+ (re.union (re.* (re.range "7" "9")) (re.range "7" "9"))))))

(assert (< (+ (* (- 5) (str.len x)) (* (- 2) (str.len y))) 79))
(assert (<= (+ (* 7 (str.to_int x)) (- (str.to_int y))) 57))

(check-sat)