(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.+ (str.to_re "224")))))
(assert (str.in_re y (re.* (re.+ (re.* (re.* (str.to_re "4")))))))

(assert (<= (+ (* 2 (str.len x)) (* 9 (str.len y))) 33))
(assert (>= (+ (* (- 7) (str.to_int x)) (* 8 (str.to_int y))) 9))
(assert (<= (+ (* (- 5) (str.len x)) (str.len y)) 76))

(check-sat)