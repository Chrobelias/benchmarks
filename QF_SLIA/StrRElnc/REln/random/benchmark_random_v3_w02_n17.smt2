(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (re.union (re.union (re.* (str.to_re "9")) (str.to_re "90")) (str.to_re "2")))))
(assert (str.in_re z (re.++ (re.++ (str.to_re "5") (re.+ (re.range "3" "8"))) (str.to_re "19"))))
(assert (str.in_re y (re.union (str.to_re "18") (re.union (re.union (str.to_re "63") (re.* (str.to_re "27"))) (str.to_re "41")))))

(assert (<= (+ (- (str.len x)) (* (- 8) (str.to_int y))) 85))

(check-sat)