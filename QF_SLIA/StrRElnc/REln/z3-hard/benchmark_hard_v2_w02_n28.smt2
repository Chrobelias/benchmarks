(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (str.to_re "0"))))
(assert (str.in_re x (re.union (re.+ (str.to_re "43")) (re.+ (re.+ (str.to_re "60"))))))

(assert (= (+ (* 2 (str.len x)) (* 9 (str.to_int x)) (* 5 (str.to_int y))) 88))

(check-sat)