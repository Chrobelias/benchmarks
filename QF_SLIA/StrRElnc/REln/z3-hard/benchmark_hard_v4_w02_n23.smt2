(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.++ (re.union (re.+ (str.to_re "317")) (str.to_re "24")) (re.+ (str.to_re "304")))))
(assert (str.in_re y (re.+ (re.++ (re.union (re.* (re.range "3" "6")) (str.to_re "8")) (str.to_re "925")))))
(assert (str.in_re x (re.* (re.+ (re.union (str.to_re "944") (str.to_re "134"))))))
(assert (str.in_re a (re.* (re.union (str.to_re "83") (str.to_re "4")))))

(assert (<= (+ (* 2 (str.len x)) (* 9 (str.to_int y))) 42))

(check-sat)