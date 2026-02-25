(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.++ (str.to_re "65") (re.+ (str.to_re "90")))))
(assert (str.in_re x (re.++ (re.union (re.++ (str.to_re "599") (re.* (str.to_re "346"))) (str.to_re "298")) (str.to_re "5"))))

(assert (>= (+ (* 8 (str.to_int x)) (* (- 5) (str.to_int y))) 60))
(assert (> (* (- 8) (str.to_int x)) 94))
(assert (<= (+ (* 10 (str.len x)) (* 7 (str.len y))) 99))
(assert (>= (+ (* (- 9) (str.len x)) (- (str.len y))) 26))

(check-sat)