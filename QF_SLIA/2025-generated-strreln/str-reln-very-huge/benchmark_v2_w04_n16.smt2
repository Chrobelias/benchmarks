(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.union (re.union (str.to_re "995") (str.to_re "249")) (re.* (str.to_re "25")))))
(assert (str.in_re y (re.++ (re.++ (re.+ (str.to_re "48")) (str.to_re "57")) (str.to_re "81"))))

(assert (<= (+ (* 10 (str.to_int x)) (* (- 6) (str.to_int y))) 82))
(assert (<= (+ (* 2 (str.to_int x)) (* 10 (str.to_int y))) 10))
(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 6) (str.to_int y))) 1))
(assert (>= (+ (* 2 (str.len x)) (str.len y)) 56))

(check-sat)