(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "802") (str.to_re "803")))))

(assert (<= (str.to_int x) 12))
(assert (<= (+ (* (- 3) (str.len x)) (* 8 (str.to_int x))) 20))
(assert (<= (* 8 (str.to_int x)) 41))

(check-sat)