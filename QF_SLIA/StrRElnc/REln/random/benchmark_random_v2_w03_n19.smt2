(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "330") (re.* (str.to_re "54")))))
(assert (str.in_re x (re.union (str.to_re "5") (re.+ (str.to_re "86")))))

(assert (<= (+ (* (- 9) (str.to_int x)) (* (- 3) (str.to_int y))) 10))
(assert (< (+ (* 8 (str.to_int x)) (* (- 8) (str.to_int y))) 11))
(assert (> (+ (* (- 7) (str.len x)) (* (- 5) (str.len y))) 4))

(check-sat)