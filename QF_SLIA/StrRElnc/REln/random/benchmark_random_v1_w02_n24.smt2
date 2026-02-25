(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "97") (re.++ (re.* (str.to_re "603")) (str.to_re "386"))))))

(assert (= (+ (str.len x) (* 5 (str.to_int x))) 44))

(check-sat)