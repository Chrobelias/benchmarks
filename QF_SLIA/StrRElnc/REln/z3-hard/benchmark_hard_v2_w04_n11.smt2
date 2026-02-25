(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (str.to_re "77"))))
(assert (str.in_re y (re.+ (re.+ (re.range "5" "7")))))

(assert (< (+ (* 5 (str.to_int x)) (* 5 (str.to_int y))) 88))
(assert (<= (+ (* (- 4) (str.len x)) (* (- 10) (str.to_int x))) 38))
(assert (>= (+ (* (- 5) (str.to_int x)) (* 10 (str.to_int y))) 89))

(check-sat)