(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "496") (re.union (str.to_re "41") (re.+ (str.to_re "677"))))))

(assert (<= (* (- 3) (str.len x)) 1))
(assert (> (+ (* 9 (str.len x)) (* 4 (str.to_int x))) 51))
(assert (> (+ (* 3 (str.len x)) (* (- 8) (str.to_int x))) 34))

(check-sat)