(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (str.to_re "79"))))
(assert (str.in_re y (re.+ (re.* (re.+ (str.to_re "223"))))))

(assert (= (+ (* (- 4) (str.len x)) (* 5 (str.to_int x))) 100))

(check-sat)