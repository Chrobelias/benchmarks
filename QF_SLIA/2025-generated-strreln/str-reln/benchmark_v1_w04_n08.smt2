(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "219") (re.* (str.to_re "3"))) (str.to_re "81"))))

(assert (= (* 2 (str.to_int x)) 46))
(assert (<= (+ (* (- 5) (str.len x)) (* 8 (str.to_int x))) 37))
(assert (> (* 6 (str.len x)) 98))

(check-sat)