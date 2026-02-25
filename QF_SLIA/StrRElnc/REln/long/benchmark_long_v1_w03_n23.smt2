(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "8") (re.+ (str.to_re "56")))))

(assert (>= (+ (* 3 (str.len x)) (* (- 7) (str.to_int x))) 78))
(assert (>= (str.len x) 23))

(check-sat)