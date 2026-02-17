(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "435") (re.range "1" "6")))))

(assert (= (+ (- (str.len x)) (* 5 (str.to_int x))) 93))

(check-sat)