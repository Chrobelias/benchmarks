(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (str.to_re "26"))))
(assert (str.in_re x (re.union (re.++ (str.to_re "6") (re.union (str.to_re "8") (re.* (str.to_re "4")))) (str.to_re "7"))))

(assert (= (+ (* (- 4) (str.len x)) (* 3 (str.to_int x)) (* 7 (str.to_int y))) 10))
(assert (>= (+ (* 6 (str.len x)) (* (- 5) (str.len y))) 22))
(assert (< (+ (* 10 (str.to_int x)) (- (str.to_int y))) 26))

(check-sat)