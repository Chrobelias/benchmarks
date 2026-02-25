(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (re.* (re.range "4" "6")) (str.to_re "178"))))
(assert (str.in_re y (re.union (re.+ (re.union (str.to_re "209") (str.to_re "6"))) (str.to_re "203"))))

(assert (>= (+ (* 9 (str.len x)) (* (- 6) (str.to_int x))) 64))

(check-sat)