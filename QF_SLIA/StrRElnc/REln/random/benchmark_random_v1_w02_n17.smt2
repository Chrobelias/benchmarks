(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "84") (re.+ (re.* (str.to_re "62"))))))

(assert (<= (+ (* (- 10) (str.len x)) (* 8 (str.to_int x))) 23))

(check-sat)