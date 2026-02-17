(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "730") (re.* (str.to_re "63")))))

(assert (>= (* 5 (str.len x)) 25))
(assert (> (+ (* 10 (str.len x)) (* 6 (str.to_int x))) 33))
(assert (<= (* 9 (str.to_int x)) 85))

(check-sat)