(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (re.+ (str.to_re "72")) (re.* (str.to_re "42"))))))

(assert (= (* 2 (str.len x)) 64))
(assert (<= (* (- 10) (str.len x)) 80))
(assert (> (+ (- (str.len x)) (str.to_int x)) 69))

(check-sat)