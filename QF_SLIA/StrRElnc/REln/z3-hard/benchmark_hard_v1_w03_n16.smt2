(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "2") (str.to_re "90")))))

(assert (<= (* 5 (str.to_int x)) 0))
(assert (> (+ (* 8 (str.len x)) (* (- 5) (str.to_int x))) 10))

(check-sat)