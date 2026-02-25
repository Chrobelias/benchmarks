(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "0") (re.union (str.to_re "925") (re.* (str.to_re "23"))))))

(assert (< (* 7 (str.len x)) 59))
(assert (> (* (- 6) (str.to_int x)) 100))

(check-sat)