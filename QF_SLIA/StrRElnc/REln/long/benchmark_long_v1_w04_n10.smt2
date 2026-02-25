(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (str.to_re "333")) (str.to_re "454"))))

(assert (> (+ (* (- 4) (str.len x)) (* (- 4) (str.to_int x))) 57))
(assert (> (+ (* (- 8) (str.len x)) (* (- 9) (str.to_int x))) 19))

(check-sat)