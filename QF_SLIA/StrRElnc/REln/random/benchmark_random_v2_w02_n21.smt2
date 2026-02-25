(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "9")) (re.++ (re.* (str.to_re "31")) (str.to_re "589")))))
(assert (str.in_re y (re.union (re.+ (str.to_re "4")) (re.union (str.to_re "0") (re.range "4" "6")))))

(assert (< (+ (- (str.len x)) (* (- 4) (str.len y))) 31))
(assert (>= (+ (* (- 10) (str.to_int x)) (* (- 8) (str.to_int y))) 79))

(check-sat)