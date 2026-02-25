(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (str.to_re "74"))))
(assert (str.in_re y (re.++ (re.* (re.+ (str.to_re "3"))) (re.+ (str.to_re "868")))))

(assert (= (* (- 7) (str.len x)) 61))
(assert (> (+ (* (- 2) (str.to_int x)) (* 9 (str.to_int y))) 4))

(check-sat)