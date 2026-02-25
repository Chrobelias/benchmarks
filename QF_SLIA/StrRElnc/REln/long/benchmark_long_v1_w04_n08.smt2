(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "13") (re.* (str.to_re "120")))))

(assert (> (* 2 (str.len x)) 87))
(assert (= (+ (* 10 (str.len x)) (* (- 7) (str.to_int x))) 98))
(assert (= (* 8 (str.to_int x)) 13))

(check-sat)