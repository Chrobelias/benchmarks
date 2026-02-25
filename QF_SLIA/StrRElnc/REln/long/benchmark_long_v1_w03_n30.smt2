(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (str.to_re "819") (str.to_re "927")))))

(assert (>= (+ (* 9 (str.len x)) (str.to_int x)) 12))
(assert (>= (* 2 (str.to_int x)) 42))

(check-sat)