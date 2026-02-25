(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.* (str.to_re "27")) (re.* (re.* (str.to_re "934"))))))

(assert (< (* (- 9) (str.len x)) 35))
(assert (= (* (- 9) (str.len x)) 58))
(assert (<= (* (- 3) (str.to_int x)) 51))
(assert (> (* (- 3) (str.to_int x)) 95))

(check-sat)