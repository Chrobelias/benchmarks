(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "171") (re.+ (re.++ (re.* (str.to_re "283")) (str.to_re "31"))))))

(assert (<= (+ (* 5 (str.len x)) (* (- 8) (str.to_int x))) 58))

(check-sat)