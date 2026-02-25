(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.* (str.to_re "899")))))

(assert (>= (+ (* (- 3) (str.len x)) (* (- 6) (str.to_int x))) 50))

(check-sat)