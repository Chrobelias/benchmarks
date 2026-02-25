(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (str.to_re "7") (re.union (re.+ (re.+ (str.to_re "4"))) (str.to_re "9")))))
(assert (str.in_re x (re.* (re.union (str.to_re "8") (re.* (str.to_re "8"))))))
(assert (str.in_re z (re.union (re.* (str.to_re "8")) (str.to_re "373"))))

(assert (< (+ (* 5 (str.len x)) (* (- 4) (str.to_int x))) 8))

(check-sat)