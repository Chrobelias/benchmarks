(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (str.to_re "3"))))
(assert (str.in_re x (re.+ (re.++ (re.+ (str.to_re "79")) (str.to_re "680")))))

(assert (> (+ (* 5 (str.to_int x)) (* (- 7) (str.to_int y))) 28))
(assert (= (+ (* 7 (str.to_int x)) (* (- 3) (str.to_int y))) 86))
(assert (<= (* (- 9) (str.len x)) 80))

(check-sat)