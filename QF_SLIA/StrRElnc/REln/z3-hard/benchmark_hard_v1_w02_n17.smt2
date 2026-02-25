(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "3") (re.++ (str.to_re "265") (re.+ (str.to_re "55"))))))

(assert (>= (+ (* 6 (str.len x)) (- (str.to_int x))) 7))

(check-sat)