(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "111") (re.+ (str.to_re "587"))) (str.to_re "41"))))
(assert (str.in_re y (re.* (re.+ (re.* (str.to_re "0"))))))

(assert (= (* (- 4) (str.len x)) 60))
(assert (< (+ (* (- 2) (str.len x)) (* (- 5) (str.len y))) 42))
(assert (< (+ (* 7 (str.to_int x)) (* 8 (str.to_int y))) 90))

(check-sat)