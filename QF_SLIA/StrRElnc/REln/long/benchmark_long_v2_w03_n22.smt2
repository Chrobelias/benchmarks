(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (re.* (re.* (re.* (str.to_re "293")))) (str.to_re "72"))))
(assert (str.in_re y (re.++ (str.to_re "957") (re.union (str.to_re "57") (re.* (str.to_re "1"))))))

(assert (= (+ (* (- 5) (str.len y)) (* (- 4) (str.to_int y))) 29))
(assert (<= (+ (* 3 (str.len x)) (* 4 (str.len y))) 48))

(check-sat)