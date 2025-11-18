(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.+ (re.union (str.to_re "94") (str.to_re "3")))))
(assert (str.in_re y (re.union (re.++ (str.to_re "4") (str.to_re "82")) (re.* (str.to_re "37")))))

(assert (>= (+ (* 5 (str.len x)) (* (- 8) (str.to_int x)) (* (- 2) (str.to_int y))) 76))

(check-sat)