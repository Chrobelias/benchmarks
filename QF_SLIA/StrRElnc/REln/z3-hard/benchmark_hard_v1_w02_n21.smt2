(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "5") (re.+ (re.++ (re.+ (str.to_re "525")) (str.to_re "0"))))))

(assert (>= (+ (* 9 (str.len x)) (* (- 10) (str.to_int x))) 80))

(check-sat)