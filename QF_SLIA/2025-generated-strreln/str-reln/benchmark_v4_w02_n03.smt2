(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "27")) (str.to_re "83")) (str.to_re "797"))))
(assert (str.in_re y (re.+ (str.to_re "558"))))
(assert (str.in_re z (re.union (re.* (str.to_re "0")) (str.to_re "95"))))
(assert (str.in_re a (re.++ (str.to_re "629") (re.+ (re.+ (str.to_re "48"))))))

(assert (< (+ (* 7 (str.len z)) (* 6 (str.to_int y)) (* 10 (str.to_int z))) 12))

(check-sat)