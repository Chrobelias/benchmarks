(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.+ (str.to_re "364"))))
(assert (str.in_re y (re.* (re.++ (str.to_re "11") (re.union (str.to_re "42") (str.to_re "998"))))))

(assert (>= (+ (* 7 (str.len y)) (* 6 (str.to_int x))) 49))

(check-sat)