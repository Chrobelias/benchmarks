(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "151") (re.union (str.to_re "843") (re.* (str.to_re "37")))))))

(assert (>= (+ (- (str.len x)) (* 10 (str.to_int x))) 35))

(check-sat)