(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ x "46") (str.++ "24" y)))

(assert (str.in_re x (re.union (str.to_re "2") (re.++ (str.to_re "27") (re.+ (str.to_re "20"))))))
(assert (str.in_re y (re.++ (re.range "5" "8") (re.union (re.* (str.to_re "79")) (str.to_re "346")))))

(assert (>= (+ (* 8 (str.len x)) (* (- 5) (str.to_int y))) 2))

(check-sat)