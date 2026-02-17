(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "909")) (re.++ (str.to_re "576") (str.to_re "48")))))

(assert (> (+ (str.len x) (* (- 2) (str.to_int x))) 51))

(check-sat)