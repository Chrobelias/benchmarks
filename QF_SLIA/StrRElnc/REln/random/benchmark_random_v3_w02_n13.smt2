(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.+ (re.* (re.range "3" "7")))))
(assert (str.in_re z (re.union (str.to_re "6") (re.union (str.to_re "264") (re.+ (str.to_re "218"))))))
(assert (str.in_re x (re.union (re.+ (str.to_re "8")) (str.to_re "28"))))

(assert (= (+ (* (- 2) (str.len z)) (* (- 8) (str.to_int y))) 2))

(check-sat)