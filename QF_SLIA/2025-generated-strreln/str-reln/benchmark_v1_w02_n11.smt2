(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "289") (re.+ (re.++ (re.* (str.to_re "9")) (str.to_re "14"))))))

(assert (< (+ (* (- 7) (str.len x)) (* 2 (str.to_int x))) 4))

(check-sat)