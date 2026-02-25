(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (re.union (re.range "2" "8") (re.+ (re.range "7" "9")))) (str.to_re "584"))))

(assert (= (* 9 (str.to_int x)) 68))
(assert (<= (- (str.len x)) 88))

(check-sat)