(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "331") (re.++ (str.to_re "63") (re.+ (str.to_re "2"))))))

(assert (< (+ (* (- 5) (str.len x)) (* 4 (str.to_int x))) 41))

(check-sat)