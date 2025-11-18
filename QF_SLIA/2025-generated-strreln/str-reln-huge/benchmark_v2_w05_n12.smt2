(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (str.to_re "43"))))
(assert (str.in_re y (re.* (str.to_re "63"))))

(assert (>= (+ (* 9 (str.len x)) (* (- 6) (str.len y))) 32))
(assert (<= (+ (* 5 (str.len x)) (* 6 (str.len y))) 47))
(assert (<= (+ (* 8 (str.len x)) (* (- 9) (str.len y))) 51))
(assert (>= (* 2 (str.to_int y)) 73))
(assert (= (+ (* 6 (str.to_int x)) (- (str.to_int y))) 58))

(check-sat)