(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "40") (re.+ (re.+ (str.to_re "969")))) (str.to_re "76"))))
(assert (str.in_re y (re.+ (re.* (re.* (str.to_re "9"))))))

(assert (>= (+ (* 7 (str.len y)) (* 8 (str.to_int y))) 11))
(assert (= (+ (* (- 7) (str.len x)) (* 10 (str.to_int y))) 1))

(check-sat)