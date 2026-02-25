(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.* (str.to_re "484"))))
(assert (str.in_re x (re.+ (str.to_re "78"))))

(assert (< (+ (* (- 3) (str.len x)) (* (- 10) (str.to_int x))) 68))

(check-sat)