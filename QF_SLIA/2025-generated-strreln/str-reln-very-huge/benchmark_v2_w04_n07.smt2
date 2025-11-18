(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.+ (str.to_re "675"))))
(assert (str.in_re y (re.+ (str.to_re "968"))))

(assert (= (+ (* 2 (str.to_int x)) (* (- 5) (str.to_int y))) 41))
(assert (<= (+ (* (- 6) (str.len y)) (* (- 7) (str.to_int x))) 85))
(assert (< (* (- 6) (str.to_int y)) 22))

(check-sat)