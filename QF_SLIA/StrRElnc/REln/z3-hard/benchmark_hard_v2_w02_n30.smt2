(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.range "3" "8") (re.* (str.to_re "83")))))
(assert (str.in_re x (re.union (re.* (re.+ (str.to_re "3"))) (str.to_re "56"))))

(assert (= (+ (- (str.len y)) (* 9 (str.to_int x))) 78))

(check-sat)