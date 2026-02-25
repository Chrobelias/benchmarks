(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "407") (re.++ (re.* (str.to_re "5")) (str.to_re "52")))))
(assert (str.in_re x (re.+ (str.to_re "531"))))

(assert (= (+ (* (- 6) (str.len y)) (* (- 4) (str.to_int x)) (* 5 (str.to_int y))) 89))
(assert (< (+ (* (- 4) (str.len x)) (* 5 (str.len y))) 73))

(check-sat)