(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.union (str.to_re "79") (re.* (str.to_re "51")))))))

(assert (>= (+ (* (- 6) (str.len x)) (* (- 2) (str.to_int x))) 26))
(assert (> (* (- 4) (str.to_int x)) 48))

(check-sat)