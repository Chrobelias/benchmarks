(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "89")) (re.++ (str.to_re "562") (str.to_re "613")))))
(assert (str.in_re y (re.* (re.* (re.+ (str.to_re "77"))))))

(assert (= (+ (* (- 8) (str.len x)) (* 9 (str.to_int x))) 15))

(check-sat)