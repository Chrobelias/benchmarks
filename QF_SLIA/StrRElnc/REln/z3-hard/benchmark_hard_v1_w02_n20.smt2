(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "89") (str.to_re "237")))))

(assert (< (+ (* (- 10) (str.len x)) (* 9 (str.to_int x))) 23))

(check-sat)