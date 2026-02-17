(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "27"))))

(assert (<= (+ (* (- 8) (str.len x)) (* 6 (str.to_int x))) 61))

(check-sat)