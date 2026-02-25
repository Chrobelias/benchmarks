(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "917") (str.to_re "46")) (re.+ (str.to_re "7")))))

(assert (>= (+ (* 6 (str.len x)) (* 10 (str.to_int x))) 13))
(assert (= (str.to_int x) 34))

(check-sat)