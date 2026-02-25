(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (str.to_re "710"))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "8") (re.+ (re.+ (str.to_re "97")))))))

(assert (= (+ (* (- 7) (str.len y)) (* (- 3) (str.to_int x))) 14))

(check-sat)