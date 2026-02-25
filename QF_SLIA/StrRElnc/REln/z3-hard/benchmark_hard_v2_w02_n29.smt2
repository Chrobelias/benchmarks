(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.+ (str.to_re "873")) (re.+ (str.to_re "662")))))
(assert (str.in_re x (re.union (re.union (str.to_re "681") (re.* (str.to_re "89"))) (re.+ (re.range "1" "4")))))

(assert (= (+ (* (- 10) (str.len x)) (* 2 (str.to_int y))) 34))

(check-sat)