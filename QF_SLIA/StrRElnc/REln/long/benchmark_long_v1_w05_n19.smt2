(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "812") (re.union (re.union (str.to_re "312") (re.* (str.to_re "58"))) (str.to_re "3")))))

(assert (> (+ (* 5 (str.len x)) (* 3 (str.to_int x))) 29))
(assert (= (* 8 (str.len x)) 24))
(assert (> (* 7 (str.len x)) 36))
(assert (< (* (- 2) (str.len x)) 4))

(check-sat)