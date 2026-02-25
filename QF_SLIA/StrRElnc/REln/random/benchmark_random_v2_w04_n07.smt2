(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.+ (str.to_re "509")))))
(assert (str.in_re x (re.++ (re.* (str.to_re "764")) (str.to_re "6"))))

(assert (= (+ (* 8 (str.len x)) (* 9 (str.to_int y))) 4))
(assert (< (+ (* (- 3) (str.to_int x)) (* 3 (str.to_int y))) 75))
(assert (<= (+ (* 2 (str.len x)) (* 7 (str.len y))) 89))

(check-sat)