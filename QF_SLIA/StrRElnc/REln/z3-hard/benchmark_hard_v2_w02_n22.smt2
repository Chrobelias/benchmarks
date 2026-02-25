(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (str.to_re "794") (re.* (str.to_re "95")))))
(assert (str.in_re y (re.+ (str.to_re "4"))))

(assert (= (+ (str.len x) (str.to_int x) (* 9 (str.to_int y))) 88))

(check-sat)