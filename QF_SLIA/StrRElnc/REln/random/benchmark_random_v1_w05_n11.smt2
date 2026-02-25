(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "4"))))

(assert (= (* 5 (str.len x)) 30))
(assert (= (* 6 (str.to_int x)) 10))
(assert (= (* 6 (str.len x)) 12))
(assert (= (* (- 8) (str.len x)) 98))
(assert (<= (* (- 8) (str.to_int x)) 21))

(check-sat)