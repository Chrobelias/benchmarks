(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.union (re.union (str.to_re "292") (re.range "7" "9")) (str.to_re "956")))))
(assert (str.in_re y (re.++ (re.union (str.to_re "28") (re.range "6" "8")) (re.* (str.to_re "7")))))

(assert (<= (+ (- (str.len x)) (* 3 (str.to_int y))) 12))
(assert (>= (str.to_int y) 54))

(check-sat)