(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.+ (re.++ (str.to_re "872") (re.* (str.to_re "906"))))))
(assert (str.in_re x (re.union (re.+ (str.to_re "440")) (str.to_re "568"))))

(assert (= (+ (* (- 9) (str.len x)) (* 2 (str.to_int y))) 12))

(check-sat)