(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.* (str.to_re "857"))))
(assert (str.in_re y (re.union (str.to_re "47") (re.* (re.+ (str.to_re "9"))))))

(assert (< (+ (str.to_int x) (* 9 (str.to_int y))) 20))
(assert (>= (+ (* 10 (str.len x)) (* (- 9) (str.len y))) 82))
(assert (<= (+ (* 4 (str.len x)) (* (- 3) (str.len y))) 65))

(check-sat)