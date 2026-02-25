(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.++ (re.+ (str.to_re "88")) (re.+ (str.to_re "17")))))
(assert (str.in_re x (re.union (re.++ (str.to_re "489") (re.* (str.to_re "87"))) (str.to_re "546"))))

(assert (>= (+ (* 7 (str.to_int x)) (* (- 4) (str.to_int y))) 56))
(assert (<= (+ (* 2 (str.to_int x)) (* (- 9) (str.to_int y))) 44))
(assert (= (+ (* 7 (str.len x)) (* 3 (str.len y))) 7))
(assert (<= (+ (- (str.to_int x)) (* 3 (str.to_int y))) 9))

(check-sat)