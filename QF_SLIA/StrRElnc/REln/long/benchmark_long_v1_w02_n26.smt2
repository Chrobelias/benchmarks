(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (re.+ (str.to_re "79")) (str.to_re "900")))))

(assert (<= (+ (* 7 (str.len x)) (* (- 10) (str.to_int x))) 54))

(check-sat)