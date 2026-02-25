(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (re.union (str.to_re "26") (str.to_re "250")) (str.to_re "42")))))

(assert (< (+ (* 3 (str.len x)) (* 3 (str.to_int x))) 24))
(assert (> (+ (* 9 (str.len x)) (* 6 (str.to_int x))) 44))
(assert (>= (* 10 (str.len x)) 29))

(check-sat)