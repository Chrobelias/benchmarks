(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "58") (re.+ (re.+ (str.to_re "683"))))))

(assert (<= (+ (* (- 8) (str.len x)) (* 2 (str.to_int x))) 14))

(check-sat)