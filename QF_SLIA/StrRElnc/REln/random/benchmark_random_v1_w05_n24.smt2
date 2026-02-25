(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "270") (re.* (str.to_re "7"))) (str.to_re "382"))))

(assert (>= (* 10 (str.to_int x)) 73))
(assert (<= (+ (* 6 (str.len x)) (* (- 6) (str.to_int x))) 54))
(assert (> (* (- 7) (str.len x)) 14))
(assert (> (str.len x) 57))

(check-sat)