(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.union (str.to_re "7") (re.* (str.to_re "82"))) (re.* (str.to_re "555")))))

(assert (= (+ (* 10 (str.len x)) (* 3 (str.to_int x))) 60))
(assert (= (* (- 4) (str.len x)) 6))
(assert (<= (* 3 (str.to_int x)) 78))
(assert (>= (* 8 (str.len x)) 46))

(check-sat)