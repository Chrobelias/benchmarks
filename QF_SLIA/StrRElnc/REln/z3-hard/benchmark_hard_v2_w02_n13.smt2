(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.+ (str.to_re "893")) (re.++ (str.to_re "1") (re.+ (str.to_re "185"))))))
(assert (str.in_re x (re.++ (re.+ (re.* (re.* (str.to_re "499")))) (str.to_re "494"))))

(assert (<= (* 6 (str.to_int x)) 16))
(assert (>= (+ (* 7 (str.len x)) (* 6 (str.len y))) 78))

(check-sat)