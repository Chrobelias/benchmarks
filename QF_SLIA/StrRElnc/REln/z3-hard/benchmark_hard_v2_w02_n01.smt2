(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "30") (re.+ (re.+ (str.to_re "50")))))))
(assert (str.in_re y (re.* (str.to_re "640"))))

(assert (<= (+ (* (- 5) (str.len x)) (* 2 (str.to_int x))) 96))

(check-sat)