(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (re.range "6" "9")) (re.+ (str.to_re "320")))))

(assert (= (+ (- (str.len x)) (* 4 (str.to_int x))) 37))

(check-sat)