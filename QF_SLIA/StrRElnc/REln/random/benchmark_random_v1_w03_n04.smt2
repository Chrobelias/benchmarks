(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (str.to_re "506") (str.to_re "934")))))

(assert (>= (+ (* (- 3) (str.len x)) (* (- 3) (str.to_int x))) 59))
(assert (< (* 2 (str.len x)) 61))

(check-sat)