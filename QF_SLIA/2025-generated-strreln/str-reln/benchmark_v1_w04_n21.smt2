(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "761")) (str.to_re "931")) (str.to_re "2"))))

(assert (<= (* 5 (str.to_int x)) 85))
(assert (< (+ (* (- 2) (str.len x)) (* (- 7) (str.to_int x))) 85))
(assert (> (* 5 (str.len x)) 82))

(check-sat)