(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (re.++ (str.to_re "337") (str.to_re "78"))) (str.to_re "641"))))

(assert (<= (* 4 (str.len x)) 53))
(assert (<= (* (- 4) (str.to_int x)) 8))

(check-sat)