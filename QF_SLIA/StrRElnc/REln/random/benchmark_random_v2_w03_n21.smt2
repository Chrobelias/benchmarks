(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "905")) (str.to_re "81"))))
(assert (str.in_re y (re.union (str.to_re "565") (re.+ (str.to_re "32")))))

(assert (< (+ (* 4 (str.len y)) (* (- 2) (str.to_int y))) 92))
(assert (> (+ (* 4 (str.to_int x)) (* 3 (str.to_int y))) 30))

(check-sat)