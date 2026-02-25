(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "67")) (re.++ (str.to_re "90") (re.* (str.to_re "1"))))))

(assert (> (* (- 2) (str.to_int x)) 44))
(assert (< (* (- 8) (str.len x)) 42))

(check-sat)