(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "91") (re.union (re.+ (str.to_re "91")) (str.to_re "426")))))

(assert (= (* 10 (str.to_int x)) 79))
(assert (>= (+ (- (str.len x)) (* 4 (str.to_int x))) 48))

(check-sat)