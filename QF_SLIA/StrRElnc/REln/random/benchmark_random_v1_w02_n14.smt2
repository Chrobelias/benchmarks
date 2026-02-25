(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "34") (re.+ (re.+ (str.to_re "870"))))))

(assert (<= (+ (* 5 (str.len x)) (* (- 9) (str.to_int x))) 9))

(check-sat)