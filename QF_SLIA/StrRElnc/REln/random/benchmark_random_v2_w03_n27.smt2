(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "373") (re.* (str.to_re "0"))) (re.* (str.to_re "554")))))
(assert (str.in_re y (re.union (str.to_re "734") (re.+ (str.to_re "702")))))

(assert (<= (+ (* 2 (str.len x)) (* 8 (str.to_int y))) 78))
(assert (<= (+ (* (- 3) (str.to_int x)) (* (- 9) (str.to_int y))) 93))

(check-sat)