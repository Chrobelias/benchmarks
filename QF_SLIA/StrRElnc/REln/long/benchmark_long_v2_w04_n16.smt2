(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (re.* (str.to_re "40")) (str.to_re "202"))))
(assert (str.in_re x (re.union (re.+ (str.to_re "600")) (re.+ (str.to_re "541")))))

(assert (> (* (- 5) (str.to_int x)) 97))
(assert (= (+ (- (str.to_int x)) (* (- 5) (str.to_int y))) 89))
(assert (<= (+ (* 10 (str.len y)) (str.to_int x)) 97))

(check-sat)