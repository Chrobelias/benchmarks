(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "88") (str.to_re "384")))))

(assert (<= (* (- 3) (str.to_int x)) 22))
(assert (<= (* 4 (str.to_int x)) 31))
(assert (<= (+ (* 5 (str.len x)) (* 4 (str.to_int x))) 54))

(check-sat)