(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "32")) (str.to_re "67"))))

(assert (< (* 5 (str.to_int x)) 89))
(assert (< (* (- 7) (str.len x)) 44))
(assert (<= (* 10 (str.to_int x)) 86))
(assert (< (* (- 2) (str.len x)) 67))

(check-sat)