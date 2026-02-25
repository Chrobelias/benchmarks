(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.* (str.to_re "899")) (re.* (str.to_re "12")))))

(assert (<= (+ (* 7 (str.len x)) (* (- 5) (str.to_int x))) 65))

(check-sat)