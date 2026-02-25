(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (str.to_re "1")))))

(assert (<= (* (- 9) (str.len x)) 74))
(assert (<= (* 9 (str.to_int x)) 79))
(assert (>= (* 5 (str.len x)) 15))

(check-sat)