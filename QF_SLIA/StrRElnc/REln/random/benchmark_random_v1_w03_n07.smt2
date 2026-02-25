(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "3") (re.* (str.to_re "72")))))

(assert (<= (* 10 (str.len x)) 56))
(assert (>= (* (- 8) (str.to_int x)) 14))
(assert (<= (* (- 10) (str.len x)) 42))

(check-sat)