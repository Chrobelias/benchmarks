(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (str.to_re "267") (re.* (str.to_re "405")))))
(assert (str.in_re y (re.+ (re.union (re.* (re.+ (str.to_re "770"))) (str.to_re "9")))))

(assert (< (+ (* 10 (str.to_int x)) (* (- 9) (str.to_int y))) 15))
(assert (= (+ (* (- 5) (str.len x)) (* (- 9) (str.len y))) 70))
(assert (<= (+ (* (- 10) (str.len x)) (* (- 6) (str.len y))) 77))
(assert (<= (+ (* (- 3) (str.len x)) (* 5 (str.len y))) 58))

(check-sat)