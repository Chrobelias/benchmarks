(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.union (re.* (str.to_re "376")) (str.to_re "48"))))
(assert (str.in_re x (re.union (str.to_re "58") (re.+ (str.to_re "672")))))

(assert (<= (+ (* (- 5) (str.to_int x)) (* 9 (str.to_int y))) 19))
(assert (= (+ (* (- 7) (str.len x)) (* (- 3) (str.len y))) 37))

(check-sat)