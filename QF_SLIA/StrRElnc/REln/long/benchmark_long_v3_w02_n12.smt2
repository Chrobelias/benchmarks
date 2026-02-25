(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.union (re.* (re.+ (str.to_re "5"))) (str.to_re "94"))))
(assert (str.in_re y (re.++ (str.to_re "70") (re.* (re.range "7" "9")))))
(assert (str.in_re x (re.+ (str.to_re "1"))))

(assert (<= (+ (- (str.len x)) (* (- 7) (str.to_int x))) 50))

(check-sat)