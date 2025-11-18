(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.++ (re.++ (re.+ (str.to_re "425")) (re.range "5" "8")) (str.to_re "46"))))
(assert (str.in_re y (re.+ (re.* (re.++ (re.* (str.to_re "0")) (str.to_re "50"))))))

(assert (< (+ (* 4 (str.len x)) (* 4 (str.to_int y))) 93))
(assert (< (+ (* (- 10) (str.to_int x)) (* (- 5) (str.to_int y))) 23))

(check-sat)