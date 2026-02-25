(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.++ (str.to_re "58") (re.* (str.to_re "204")))))
(assert (str.in_re y (re.union (re.+ (str.to_re "49")) (str.to_re "7"))))

(assert (> (+ (* 4 (str.len x)) (* (- 9) (str.len y)) (* 6 (str.to_int y))) 45))
(assert (>= (+ (* (- 6) (str.to_int x)) (* 2 (str.to_int y))) 31))

(check-sat)