(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "95")))

(assert (str.in_re y (re.+ (re.union (re.range "6" "9") (re.range "5" "8")))))
(assert (str.in_re x (re.union (re.union (re.* (str.to_re "13")) (str.to_re "454")) (str.to_re "759"))))

(assert (<= (+ (* (- 4) (str.len x)) (* 3 (str.to_int x))) 99))

(check-sat)