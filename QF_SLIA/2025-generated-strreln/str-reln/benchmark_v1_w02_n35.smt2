(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "725") (re.++ (re.* (str.to_re "903")) (str.to_re "828")))))

(assert (<= (+ (- (str.len x)) (* 2 (str.to_int x))) 27))

(check-sat)