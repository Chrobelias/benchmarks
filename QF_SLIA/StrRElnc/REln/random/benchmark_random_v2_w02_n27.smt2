(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.++ (re.+ (str.to_re "60")) (str.to_re "1")))))
(assert (str.in_re y (re.* (re.++ (re.+ (re.* (str.to_re "77"))) (str.to_re "862")))))

(assert (>= (+ (* (- 2) (str.len y)) (* 3 (str.to_int y))) 49))

(check-sat)