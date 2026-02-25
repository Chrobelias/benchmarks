(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "251") (re.+ (re.union (re.+ (str.to_re "601")) (str.to_re "520"))))))
(assert (str.in_re x (re.+ (re.union (re.++ (str.to_re "83") (str.to_re "667")) (str.to_re "54")))))

(assert (= (+ (* (- 3) (str.len x)) (* 4 (str.to_int x))) 86))

(check-sat)