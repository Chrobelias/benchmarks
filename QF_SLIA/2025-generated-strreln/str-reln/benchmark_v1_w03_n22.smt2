(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.++ (str.to_re "451") (str.to_re "24"))))))

(assert (>= (+ (* 3 (str.len x)) (- (str.to_int x))) 42))
(assert (>= (* 7 (str.to_int x)) 35))

(check-sat)