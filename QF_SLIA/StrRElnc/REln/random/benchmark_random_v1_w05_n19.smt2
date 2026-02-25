(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "62") (re.+ (str.to_re "86")))))

(assert (>= (+ (* 9 (str.len x)) (* 10 (str.to_int x))) 61))
(assert (>= (* 2 (str.to_int x)) 93))
(assert (>= (* (- 4) (str.len x)) 1))
(assert (< (* 5 (str.len x)) 84))

(check-sat)