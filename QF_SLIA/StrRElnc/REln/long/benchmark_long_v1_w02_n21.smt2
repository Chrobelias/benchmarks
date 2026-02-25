(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.* (re.union (str.to_re "784") (str.to_re "1"))))))

(assert (= (+ (* (- 7) (str.len x)) (* (- 10) (str.to_int x))) 35))

(check-sat)