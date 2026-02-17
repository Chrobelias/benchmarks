(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "23"))))

(assert (>= (* 6 (str.len x)) 16))
(assert (>= (+ (* 7 (str.len x)) (* 2 (str.to_int x))) 97))
(assert (<= (* 4 (str.to_int x)) 4))

(check-sat)