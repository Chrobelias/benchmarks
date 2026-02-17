(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "721") (re.union (re.* (str.to_re "96")) (re.+ (str.to_re "29"))))))

(assert (>= (+ (* 3 (str.len x)) (* 5 (str.to_int x))) 41))
(assert (< (* 8 (str.to_int x)) 21))

(check-sat)