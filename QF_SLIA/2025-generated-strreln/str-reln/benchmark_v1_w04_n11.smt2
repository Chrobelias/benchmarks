(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "548") (re.* (str.to_re "780"))) (str.to_re "923"))))

(assert (<= (+ (* (- 6) (str.len x)) (* (- 6) (str.to_int x))) 51))
(assert (< (* 3 (str.to_int x)) 78))
(assert (< (* (- 5) (str.to_int x)) 52))

(check-sat)