(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "46")) (str.to_re "29")) (re.+ (str.to_re "8")))))

(assert (>= (+ (* 10 (str.len x)) (* (- 7) (str.to_int x))) 51))

(check-sat)