(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "236"))))

(assert (= (+ (* 10 (str.len x)) (- (str.to_int x))) 81))

(check-sat)