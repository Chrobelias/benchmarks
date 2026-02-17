(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "5")) (str.to_re "25"))))

(assert (> (+ (* 9 (str.len x)) (* 9 (str.to_int x))) 62))
(assert (<= (* 4 (str.to_int x)) 44))
(assert (< (- (str.len x)) 75))

(check-sat)