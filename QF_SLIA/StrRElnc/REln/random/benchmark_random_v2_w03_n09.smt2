(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (str.to_re "336"))))
(assert (str.in_re y (re.union (str.to_re "79") (re.++ (re.+ (re.+ (re.range "4" "8"))) (str.to_re "847")))))

(assert (<= (+ (* 3 (str.len x)) (* (- 4) (str.len y))) 77))
(assert (<= (+ (* (- 7) (str.len y)) (* (- 2) (str.to_int x)) (* 2 (str.to_int y))) 34))

(check-sat)