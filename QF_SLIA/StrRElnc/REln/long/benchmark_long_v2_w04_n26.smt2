(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (re.union (re.++ (str.to_re "17") (re.* (str.to_re "375"))) (str.to_re "74")) (str.to_re "5"))))
(assert (str.in_re y (re.union (str.to_re "4") (re.+ (str.to_re "861")))))

(assert (>= (+ (* (- 3) (str.len y)) (* 8 (str.to_int x))) 15))
(assert (= (+ (* (- 4) (str.to_int x)) (* (- 2) (str.to_int y))) 44))
(assert (<= (* 10 (str.to_int y)) 55))

(check-sat)