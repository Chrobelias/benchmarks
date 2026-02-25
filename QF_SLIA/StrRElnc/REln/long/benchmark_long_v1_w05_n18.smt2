(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.union (str.to_re "63") (re.+ (str.to_re "704"))))))

(assert (<= (* (- 7) (str.to_int x)) 7))
(assert (> (* 5 (str.len x)) 59))
(assert (> (* 5 (str.len x)) 9))
(assert (= (+ (* 9 (str.len x)) (* 5 (str.to_int x))) 32))

(check-sat)